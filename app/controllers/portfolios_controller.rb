class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all
  end

  def new
      @portfolio_item = Portfolio.new
  end

  # POST /portfolios or /portfolios.json
  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle , :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: "Portfolio item was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end

  # PATCH/PUT /blogs/1 or /blogs/1.json
  def update
    @portfolio_item = Portfolio.find(params[:id])

    respond_to do |format|
      if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle , :body))
        format.html { redirect_to portfolios_path, notice: "Portfolio item was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def show
    @portfolio_item = Portfolio.find(params[:id])
  end

  def destroy
    @portfolio_item = Portfolio.find(params[:id])
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_path, notice: "Post was removed." }
    end
  end
end
