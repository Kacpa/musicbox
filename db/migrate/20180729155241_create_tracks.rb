class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.references :party, foreign_key: true
      t.references :guest, foreign_key: true
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
