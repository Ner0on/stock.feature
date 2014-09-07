class CreateValues < ActiveRecord::Migration
  def change
    create_table :values do |t|
    	t.integer :year
    	t.decimal :growth
    	t.integer :stock_id
      t.timestamps
    end
  end
end
