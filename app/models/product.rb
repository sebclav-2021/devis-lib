class Product < ApplicationRecord
  belongs_to :services, through: :supplies
end
