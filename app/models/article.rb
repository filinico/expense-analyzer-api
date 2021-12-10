class Article < ApplicationRecord
  belongs_to :product
  belongs_to :receipt
  belongs_to :weight_type
end
