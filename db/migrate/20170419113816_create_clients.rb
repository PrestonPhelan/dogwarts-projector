class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name, null: false
      t.integer :num_dogs, null: false, default: 1
      t.string :dogs, null: false

      t.timestamps
    end
  end
end
