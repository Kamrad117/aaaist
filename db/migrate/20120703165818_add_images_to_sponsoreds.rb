class AddImagesToSponsoreds < ActiveRecord::Migration
  def change
    add_column :sponsoreds, :alt_im, :text

    add_column :sponsoreds, :pre_im, :text

  end
end
