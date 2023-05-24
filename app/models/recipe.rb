class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods

   def self.get_all_recipes(user_id)
    where(user_id:)
  end
end
