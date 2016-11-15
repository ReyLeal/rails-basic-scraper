class CreateCraigslists < ActiveRecord::Migration[5.0]
  def change
    create_table :craigslists do |t|
      t.string :job_title

      t.timestamps
    end
  end
end
