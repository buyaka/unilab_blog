class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :name
      t.text :comment
      t.integer :post_id

      t.timestamps
    end
  end
end
