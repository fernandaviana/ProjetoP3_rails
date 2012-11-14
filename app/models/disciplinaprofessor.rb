class Disciplinaprofessor < ActiveRecord::Base
  belongs_to :disciplina
  belongs_to :professor
  attr_accessible :disciplina_id, :professor_id, :ano, :periodo
end
