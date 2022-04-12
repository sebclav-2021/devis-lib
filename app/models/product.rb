class Product < ApplicationRecord
  has_many :supplies, dependent: :destroy
  has_many :services, through: :supplies, dependent: :destroy
end
