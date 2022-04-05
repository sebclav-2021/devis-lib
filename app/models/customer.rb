class Customer < ApplicationRecord
  has_many :quotes
  def display_name
    self.name
  end
end
