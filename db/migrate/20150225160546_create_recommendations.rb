class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.text :body
      t.references :user, index: true
      t.references :carpenter, index: true
      t.string :title

      t.timestamps
    end
  end
end
