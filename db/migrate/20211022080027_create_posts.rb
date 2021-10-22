class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :author
      t.string :tag
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end