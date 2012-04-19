class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.text :alt_im
      t.text :pre_im

      t.timestamps
    end
  end
end
