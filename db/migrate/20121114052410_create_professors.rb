class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :nomeprofessor
      t.string :sexo

      t.timestamps
    end
  end
end
