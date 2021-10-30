class City < ApplicationRecord
  has_many :sitters
  has_many :dogs
  has_many :strolls
end
