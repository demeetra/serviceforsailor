class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.timestamps
      t.boolean :display_in_navbar, default: true
    end
  end
end
