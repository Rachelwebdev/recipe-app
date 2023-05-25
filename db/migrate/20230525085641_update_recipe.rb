class UpdateRecipe < ActiveRecord::Migration[7.0]
  def change
    change_column :recipes, :preparation_time, :integer, using: 'preparation_time::integer'
    change_column :recipes, :cooking_time, :integer, using: 'cooking_time::integer'
  end
end
