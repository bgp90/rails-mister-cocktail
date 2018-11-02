class Dose < ApplicationRecord
  validates :ingredient_id, uniqueness: { scope: %i[cocktail_id] }
  validates :description, presence: true
  belongs_to :ingredient
  belongs_to :cocktail
end


