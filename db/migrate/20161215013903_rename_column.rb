class RenameColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :emails, :email, :sender_email
  end
end
