class CreateWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :works do |t|
      t.string :title
      t.string :detail
      t.integer :period
      t.date :end_date
      t.integer :User_ID
      
      t.timestamps
    end
  end
end
