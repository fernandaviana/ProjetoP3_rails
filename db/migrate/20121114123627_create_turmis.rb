class CreateTurmis < ActiveRecord::Migration
  def change
    create_table :turmis do |t|
      t.references :aluno
      t.references :disciplinaprofessor

      t.timestamps
    end
    add_index :turmis, :aluno_id
    add_index :turmis, :disciplinaprofessor_id
  end
end
