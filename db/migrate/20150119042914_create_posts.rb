class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :name
      t.text :note

      t.timestamps
    end
  end
end
