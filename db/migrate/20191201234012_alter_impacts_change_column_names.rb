class AlterImpactsChangeColumnNames < ActiveRecord::Migration[5.2]
  def change
  	rename_column :impacts, :value, :item
  end
end
