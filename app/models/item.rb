class Item < ApplicationRecord
  belongs_to :section, optional: true
end
