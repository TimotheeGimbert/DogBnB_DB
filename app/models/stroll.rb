class Stroll < ApplicationRecord
  belongs_to :sitter
  belongs_to :pack
  has_many :dogs, through: :pack
end
