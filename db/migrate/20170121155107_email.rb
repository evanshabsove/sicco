class Email < ActiveRecord::Migration[5.0]
  def change
    create_table :emails do |t|
      t.text :email_content
    end
  end
end
