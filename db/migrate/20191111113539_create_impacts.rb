class CreateImpacts < ActiveRecord::Migration[5.2]
  def change
    create_table :impacts do |t|
      t.string :name
      t.text :description
      t.float :value
      t.integer :quantity
      t.timestamps
    end
  end
end
