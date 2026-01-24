class CreateServices < ActiveRecord::Migration[7.2]
  def change
    create_table :services do |t|
      t.string :title
      t.string :text_field1
      t.string :text_field2
      t.string :text_field3

      t.timestamps
    end
  end
end
