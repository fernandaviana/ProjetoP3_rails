class CreateDisciplinas < ActiveRecord::Migration
  def change
    create_table :disciplinas do |t|
      t.string :nomedisciplina
      t.string :sigla
      t.string :cargahoraria
      t.string :periodo

      t.timestamps
    end
  end
end
