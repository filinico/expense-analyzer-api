class Product < ApplicationRecord
  has_many :articles
  has_many :receipts, through: :articles
end
