class Supply < ApplicationRecord
  belongs_to :product
  belongs_to :service
end
