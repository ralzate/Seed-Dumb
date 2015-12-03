class CreateNotasProgreso < ActiveRecord::Migration
  def change
    create_table :notas_progreso do |t|
      t.string :nombre_paciente
      t.string :documento_paciente
      t.string :tipo_documento
      t.integer :edad
      t.string :registro_medico
      t.text :descripcion
      t.references :historia_clinica, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
