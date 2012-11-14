class CreateDisciplinaprofessors < ActiveRecord::Migration
  def change
    create_table :disciplinaprofessors do |t|
      t.string :ano
      t.string :periodo
      t.references :disciplina
      t.references :professor

      t.timestamps
    end
    add_index :disciplinaprofessors, :disciplina_id
    add_index :disciplinaprofessors, :professor_id
  end
end
