class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.integer :hospital_id
      t.string :phone
      t.string :name

      t.timestamps

    end
  end
end
