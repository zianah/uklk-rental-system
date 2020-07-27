class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :message
      t.integer :score
      t.references :user, foreign_key: true
      t.references :rental, foreign_key: true

      t.timestamps
    end
  end
end
