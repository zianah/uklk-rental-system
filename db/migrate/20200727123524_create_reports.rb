class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.text :message
      t.string :title
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
