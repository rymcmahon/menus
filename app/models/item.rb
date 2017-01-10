class Item < ApplicationRecord
  belongs_to :section, optional: true
  validates :name, :description, :price, presence: true
end
