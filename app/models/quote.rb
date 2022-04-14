class Quote < ApplicationRecord
  belongs_to :user
  belongs_to :customer
  has_many :lines, dependent: :destroy
  has_many :services, through: :lines, dependent: :destroy

  def self.search(query)
    customers = Customer.where("name ILIKE ?", "%#{query}%").select{ |customer| !customer.quotes.empty?}
    customers.map{|customer| customer.quotes}.flatten
  end
end
