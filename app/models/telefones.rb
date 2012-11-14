class Telefone < ActiveRecord::Base
  belongs_to :aluno
  belongs_to :tipotelefone
  attr_accessible :aluno_id, :tipotelefone_id, :ddd, :numerotelefone
end
