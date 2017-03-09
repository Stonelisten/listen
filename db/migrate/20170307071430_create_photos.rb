class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :image
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
