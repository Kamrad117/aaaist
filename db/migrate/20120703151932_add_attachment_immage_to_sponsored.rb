class AddAttachmentImmageToSponsored < ActiveRecord::Migration
  def self.up
    add_column :sponsoreds, :immage_file_name, :string
    add_column :sponsoreds, :immage_content_type, :string
    add_column :sponsoreds, :immage_file_size, :integer
    add_column :sponsoreds, :immage_updated_at, :datetime
  end

  def self.down
    remove_column :sponsoreds, :immage_file_name
    remove_column :sponsoreds, :immage_content_type
    remove_column :sponsoreds, :immage_file_size
    remove_column :sponsoreds, :immage_updated_at
  end
end
