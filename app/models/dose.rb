class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  # validates :description, uniqueness: { scope: %i[ingredient_id cocktail_id] } ==> Why it does not work?!
  validates :ingredient_id, uniqueness: { scope: :cocktail_id }
end
