class Turmi < ActiveRecord::Base
  belongs_to :aluno
  belongs_to :disciplinaprofessor
  attr_accessible :aluno_id, :disciplinaprofessor_id
end
