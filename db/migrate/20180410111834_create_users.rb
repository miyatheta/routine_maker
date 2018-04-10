class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :pasword
      t.string :confirm_pasword
      t.date :birthday

      t.timestamps
    end
  end
end
