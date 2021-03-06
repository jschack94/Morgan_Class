class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :mobile_number
      t.string :password_digest
      t.boolean :is_admin, default: false

      t.timestamps
    end
  end
end
