class Dog < ApplicationRecord
  belongs_to :city
  belongs_to :pack
  has_many :strolls
  has_many :sitters, through: :strolls
end
