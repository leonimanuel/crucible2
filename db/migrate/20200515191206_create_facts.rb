class CreateFacts < ActiveRecord::Migration[6.0]
  def change
    create_table :facts do |t|
      t.string :content
      t.string :url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
