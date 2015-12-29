class AddSequenceToHistoriasClinicas < ActiveRecord::Migration
  def change
    add_column :historias_clinicas, :sequence, :string
  end
end
