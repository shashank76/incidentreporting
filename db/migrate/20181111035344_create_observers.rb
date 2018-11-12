class CreateObservers < ActiveRecord::Migration[5.2]
  def change
    create_table :observers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.references :incident, foreign_key: true

      t.timestamps
    end
  end
end
