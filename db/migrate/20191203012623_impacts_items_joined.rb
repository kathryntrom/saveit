class ImpactsItemsJoined < ActiveRecord::Migration[5.2]
  def change
  	create_table :Impactitems do |t|
      t.integer :impact_id
      t.integer :item_id
      t.timestamps
    end
  end
end
