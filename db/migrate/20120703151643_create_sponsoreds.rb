class CreateSponsoreds < ActiveRecord::Migration
  def change
    create_table :sponsoreds do |t|
      t.string :name
      t.text :description


      t.timestamps
    end
  end
end
