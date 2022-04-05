class Quote < ApplicationRecord
  belongs_to :user
  belongs_to :customer
  has_many :lines
  has_many :services through: :lines
end
