class AddEncryptedLinkToPoll < ActiveRecord::Migration
  def change
    add_column :polls, :encrypted_link, :string
  end
end
