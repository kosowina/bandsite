class CreateEmails < ActiveRecord::Migration[5.0]
  def change
    create_table :emails do |t|
      t.string :email
      t.text :subject
      t.text :content

      t.timestamps
    end
  end
end
