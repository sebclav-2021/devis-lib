class Quote < ApplicationRecord
  belongs_to :user
  belongs_to :customer
  has_many :lines, dependent: :destroy
  has_many :services, through: :lines, dependent: :destroy
end
