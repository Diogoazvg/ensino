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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141012050850) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "producao_cientificas", force: true do |t|
    t.string   "artigo"
    t.string   "monografia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "producao_cientificas_professores", id: false, force: true do |t|
    t.integer "professor_id"
    t.integer "producao_cientifica_id"
  end

  create_table "professores", force: true do |t|
    t.string   "nome"
    t.integer  "cpf"
    t.integer  "telefone"
    t.string   "endereco"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "professores_titulacoes", id: false, force: true do |t|
    t.integer "professor_id"
    t.integer "titulacao_id"
  end

  create_table "titulacoes", force: true do |t|
    t.string   "mestre"
    t.string   "pos"
    t.string   "doutor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
