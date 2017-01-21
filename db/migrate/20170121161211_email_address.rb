class EmailAddress < ActiveRecord::Migration[5.0]
  def change
    add_column :emails, :email_address, :string
  end
end
