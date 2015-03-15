class AddNameToCarpenters < ActiveRecord::Migration
  def change
    add_column :carpenters, :name, :string
  end
end
