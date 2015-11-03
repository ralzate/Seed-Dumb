class CreateProgressNotes < ActiveRecord::Migration
  def change
    create_table :progress_notes do |t|
      t.string :patient_name
      t.string :patient_document
      t.string :type_document
      t.integer :age
      t.string :medical_record
      t.text :description
      t.references :clinic_history, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
