class Customer < ApplicationRecord
  has_many :quotes, dependent: :destroy
  def display_name
    self.name
  end
end
