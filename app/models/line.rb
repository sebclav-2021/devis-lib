class Line < ApplicationRecord
  belongs_to :service
  belongs_to :quote
end
