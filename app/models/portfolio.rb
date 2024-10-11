class Portfolio < ApplicationRecord
  include Placeholder
  validates :title, :body, :main_image, :thumb_image, presence: true

  def self.angular
    where(subtitle: "Angular")
  end

  scope :ruby_on_rails, -> { where(subtitle: "Ruby on Rails") }

  after_initialize :set_defaults
  def set_defaults
    self.main_image ||= Placeholder.image_generator("300", "200")
    self.thumb_image ||= Placeholder.image_generator("300", "200")
  end
end
