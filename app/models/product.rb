class Product < ApplicationRecord
  validates_presence_of :title, :description, (:front_image || :back_image)
end
