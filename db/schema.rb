# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121114123627) do

  create_table "alunos", :force => true do |t|
    t.string   "matricula"
    t.string   "nomealuno"
    t.string   "sexo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "disciplinaprofessors", :force => true do |t|
    t.string   "ano"
    t.string   "periodo"
    t.integer  "disciplina_id"
    t.integer  "professor_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "disciplinaprofessors", ["disciplina_id"], :name => "index_disciplinaprofessors_on_disciplina_id"
  add_index "disciplinaprofessors", ["professor_id"], :name => "index_disciplinaprofessors_on_professor_id"

  create_table "disciplinas", :force => true do |t|
    t.string   "nomedisciplina"
    t.string   "sigla"
    t.string   "cargahoraria"
    t.string   "periodo"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "professors", :force => true do |t|
    t.string   "nomeprofessor"
    t.string   "sexo"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "telefones", :force => true do |t|
    t.string   "ddd"
    t.string   "numerotelefone"
    t.integer  "aluno_id"
    t.integer  "tipotelefone_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "telefones", ["aluno_id"], :name => "index_telefones_on_aluno_id"
  add_index "telefones", ["tipotelefone_id"], :name => "index_telefones_on_tipotelefone_id"

  create_table "tipotelefones", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "turmis", :force => true do |t|
    t.integer  "aluno_id"
    t.integer  "disciplinaprofessor_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  add_index "turmis", ["aluno_id"], :name => "index_turmis_on_aluno_id"
  add_index "turmis", ["disciplinaprofessor_id"], :name => "index_turmis_on_disciplinaprofessor_id"

end
