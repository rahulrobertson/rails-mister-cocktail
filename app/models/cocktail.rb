class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, presence: true, length: { minimum: 1 }, uniqueness: true
end
