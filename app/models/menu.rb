class Menu < ApplicationRecord
  has_many :sections
  accepts_nested_attributes_for :sections, :reject_if => :all_blank, :allow_destroy => true
end
