class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.text :text
      t.integer :addressable_id

      t.timestamps
    end
  end
end
