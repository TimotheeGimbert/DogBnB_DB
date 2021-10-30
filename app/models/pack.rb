class Pack < ApplicationRecord
  has_many :strolls
  has_many :dogs
end
