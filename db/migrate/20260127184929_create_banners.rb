class CreateBanners < ActiveRecord::Migration[7.2]
  def change
    create_table :banners do |t|
      t.string :title
      t.string :subtitle
      t.string :image
      t.string :button_link
      t.boolean :active

      t.timestamps
    end
  end
end
