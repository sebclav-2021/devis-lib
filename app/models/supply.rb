class Supply < ApplicationRecord
  belongs_to :product, dependent: :destroy
  belongs_to :service, dependent: :destroy
end
