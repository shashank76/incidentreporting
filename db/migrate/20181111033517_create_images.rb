class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :imageable_id
      t.string :imageable_type
      t.string :file

      t.timestamps
    end
  end
end
