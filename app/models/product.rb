class Product < ActiveRecord::Base
  validates :name, :presence => true
  validates :description, :presence => true
  validates :origin, :presence => true
  validates :cost, :presence => true
  validates :style, :presence => true
  validates :image, :presence => true
end
