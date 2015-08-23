class CreateMachineTypes < ActiveRecord::Migration
  def change
    create_table :machine_types, id: :uuid do |t|
      t.string :name
      t.text :description
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
