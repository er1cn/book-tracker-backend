class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :text
      t.integer :rating
      t.belongs_to :character, foreign_key: true
    end
  end
end
