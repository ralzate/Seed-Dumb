class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.references :ciudad
      t.string :primer_nombre
      t.string :segundo_nombre
      t.string :primer_apellido
      t.string :segundo_apellido
      t.string :email
      t.string :tipo_documento
      t.string  :documento
      t.date :fecha_nacimiento
      t.string :genero
      t.string :profesion
      t.string :tipo_sangre
      t.string :nacionalidad
      # t.references :eps, index: true, foreign_key: true
      #t.references :arl, index: true, foreign_key: true
      t.string :direccion
      t.string :condicion
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :pacientes, :ciudad_id
  end
end
