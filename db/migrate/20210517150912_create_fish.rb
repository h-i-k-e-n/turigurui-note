class CreateFish < ActiveRecord::Migration[6.0]
  def change
    create_table :fish do |t|
      t.string  :name, null: false
      t.string  :memo
      t.string  :item_a
      t.string  :item_b
      t.string  :item_c
      t.timestamps
    end
  end
end
