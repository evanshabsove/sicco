class Subject < ActiveRecord::Migration[5.0]
  def change
    add_column :emails, :email_subject, :string
  end
end
