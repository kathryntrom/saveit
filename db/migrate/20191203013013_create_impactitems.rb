class CreateImpactitems < ActiveRecord::Migration[5.2]
  def change
    create_table :footprints do |t|
    	t.integer :item_id
    	t.integer :impact_id
      t.timestamps
    end
  end
end
