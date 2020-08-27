class Ingredient < ApplicationRecord
  has_many :doses
  # has_many :cocktails, through: :doses ==> Why not use this?

  validates :name, presence: true
  validates :name, uniqueness: true
end
