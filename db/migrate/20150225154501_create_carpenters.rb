class CreateCarpenters < ActiveRecord::Migration
  def change
    create_table :carpenters do |t|
      t.references :user, index: true
      t.text :description

      t.timestamps
    end
  end
end
