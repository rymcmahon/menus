class Section < ApplicationRecord
  belongs_to :menu, optional: true
  has_many :items, dependent: :destroy
  accepts_nested_attributes_for :items, reject_if: :all_blank, allow_destroy: true
  validates :name, presence: true
end
