class CreateMembers < ActiveRecord::Migration[7.2]
  def change
    create_table :members do |t|
      t.string :name
      t.string :role
      t.string :description

      t.timestamps
    end
  end
end
