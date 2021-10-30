class Stroll < ApplicationRecord
  belongs_to :city
  belongs_to :sitter
  belongs_to :pack
end
