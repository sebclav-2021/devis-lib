class Service < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :lines, dependent: :destroy
  has_many :supplies, dependent: :destroy
  has_many :products, through: :supplies, dependent: :destroy
end
