class CreateMugs < ActiveRecord::Migration[6.0]
  def change
    create_table :mugs do |t|
      t.string :color
      t.string :size
      t.text :description
      t.integer :price_by_day
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
