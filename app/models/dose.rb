class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail

  validates :description, presence: true, length: { minimum: 1 }
  validates :cocktail, uniqueness: { scope: :ingredient }
end
