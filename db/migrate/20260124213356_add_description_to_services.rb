class AddDescriptionToServices < ActiveRecord::Migration[7.2]
  def change
    add_column :services, :description, :string
  end
end
