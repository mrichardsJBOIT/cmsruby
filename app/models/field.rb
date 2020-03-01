class Field < ApplicationRecord
  belongs_to :page
  belongs_to :field_definition
end
