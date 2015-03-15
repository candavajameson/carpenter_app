class AddAddressToCarpenters < ActiveRecord::Migration
  def change
    add_column :carpenters, :address, :string
  end
end
