class Receipt < ApplicationRecord
  belongs_to :shop
  has_many :articles
  has_many :products, through: :articles
end
