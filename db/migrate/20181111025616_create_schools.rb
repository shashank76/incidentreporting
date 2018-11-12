class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :location
      t.string :details
      t.string :contact

      t.timestamps
    end
  end
end
