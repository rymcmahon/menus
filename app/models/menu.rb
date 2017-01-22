class Menu < ApplicationRecord
  has_many :sections, dependent: :destroy
  accepts_nested_attributes_for :sections, reject_if: :all_blank, allow_destroy: true
  validates :name, presence: true
end
