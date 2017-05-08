class CreateFoodinfos < ActiveRecord::Migration
  def change
    create_table :foodinfos do |t|
      t.string "title"
      t.string "amount"
      t.string "content"
      t.timestamps null: false
  
    end
  end
end