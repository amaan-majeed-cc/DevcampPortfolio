class FetchController < ApplicationController
  def index
    @fetched_data = params[:fetched_data]
  end
end