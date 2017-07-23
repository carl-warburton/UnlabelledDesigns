class Product < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :description, :front_image, :back_image

  def self.illustrated
    where(description: "Illustrated Series")
  end

  after_initialize :set_defaults


  def set_defaults
    self.front_image ||= Placeholder.image_generater(height: '200', width: '200')
    self.back_image ||= Placeholder.image_generater(height: '100', width: '250')
  end
end
