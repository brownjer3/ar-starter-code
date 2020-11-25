class CreateCategoryTable < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :user_id
    end
  end 
end
