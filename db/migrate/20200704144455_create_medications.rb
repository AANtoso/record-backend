class CreateMedications < ActiveRecord::Migration[6.0]
  def change
    create_table :medications do |t|
      t.string :name
      t.string :dose
      t.string :frequency
      t.boolean :called_in
      t.belongs_to :diagnosis, null: false, foreign_key: true

      t.timestamps
    end
  end
end
