class Product < ApplicationRecord
  has_many :supplies
  has_many :services, through: :supplies
end
