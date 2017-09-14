class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :description
      t.integer :course, index: true

      t.timestamps
    end
  end
end
