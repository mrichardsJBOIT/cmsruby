class Type < ApplicationRecord
  has_many :field_definitions,  :dependent => :destroy

  accepts_nested_attributes_for :field_definitions, reject_if: :all_blank
end
