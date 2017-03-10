class AddImgTypeToPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :img_type, :int
  end
end
