class Product < ApplicationRecord
  has_and_belongs_to_many :sizes
  accepts_nested_attributes_for :sizes,
                                            reject_if: lambda { |attrs| attrs['name'].blank? }

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
