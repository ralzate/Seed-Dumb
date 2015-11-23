class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.references :city
      t.string :first_name
      t.string :second_name
      t.string :first_surname
      t.string :second_surname
      t.string :email
      t.string :type_document
      t.string  :document
      t.date :birthdate
      t.string :gender
      t.string :profession
      t.string :blood_type
      t.string :nacionality
      # t.references :eps, index: true, foreign_key: true
      #t.references :arl, index: true, foreign_key: true
      t.string :address
      t.string :condition
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :patients, :city_id
  end
end
