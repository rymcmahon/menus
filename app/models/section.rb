class Section < ApplicationRecord
  belongs_to :menu, optional: true
  has_many :items
  accepts_nested_attributes_for :items, reject_if: :all_blank, allow_destroy: true
end
