class AddDateToCraigslist < ActiveRecord::Migration[5.0]
  def change
    add_column :craigslists, :date, :string
  end
end
