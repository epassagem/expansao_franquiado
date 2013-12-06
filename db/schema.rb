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

ActiveRecord::Schema.define(version: 20131206143755) do

  create_table "aprov_estabelecimentos", force: true do |t|
    t.boolean  "estatus"
    t.integer  "interessado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carta", force: true do |t|
    t.string   "arquivo"
    t.boolean  "status"
    t.integer  "interessado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cronogramas", force: true do |t|
    t.string   "status"
    t.integer  "interessado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doc_fiscais", force: true do |t|
    t.string   "rg"
    t.string   "cpf"
    t.string   "serasa"
    t.boolean  "seresa_status"
    t.string   "fpc"
    t.string   "bens_imob"
    t.string   "imposto_renda_pf"
    t.string   "imposto_renda_pj"
    t.string   "comprovante_resid"
    t.string   "certidao_casamento"
    t.string   "socio_rg"
    t.string   "socio_cpf"
    t.string   "socio_serasa"
    t.string   "socio_fpc"
    t.string   "socio_bens_imob"
    t.string   "socio_imposto_renda_pf"
    t.string   "socio_imposto_renda_pj"
    t.string   "socio_comprovante_resid"
    t.string   "socio_certidao_casamento"
    t.boolean  "status"
    t.integer  "interessado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doc_ponto_comers", force: true do |t|
    t.boolean  "estatus"
    t.string   "arquivo"
    t.string   "tipo"
    t.integer  "interessado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interessados", force: true do |t|
    t.string   "nome"
    t.integer  "cpf"
    t.integer  "rg"
    t.date     "data_nasc"
    t.string   "estado_civil"
    t.string   "regime_bens"
    t.string   "renda"
    t.string   "sera_admin"
    t.string   "dispon_integral"
    t.string   "quem_sera_admin"
    t.string   "resumo_prof"
    t.string   "manifesto_pos"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "oprov_proj_arqus", force: true do |t|
    t.boolean  "estatus"
    t.integer  "interessado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pagto_taxas", force: true do |t|
    t.boolean  "estatus"
    t.integer  "interessado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "planilhas", force: true do |t|
    t.boolean  "estatus"
    t.integer  "interessado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pro_contratos", force: true do |t|
    t.string   "arquivo"
    t.boolean  "estatus"
    t.integer  "interessado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projeto_arquitetonicos", force: true do |t|
    t.boolean  "status"
    t.integer  "interessado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "redacaos", force: true do |t|
    t.string   "arquivo"
    t.boolean  "status"
    t.integer  "interessado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trein_consul_comercials", force: true do |t|
    t.boolean  "estatus"
    t.date     "data"
    t.integer  "interessado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trein_coord_pedags", force: true do |t|
    t.boolean  "estatus"
    t.date     "data"
    t.integer  "interessado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trein_oper_franquia", force: true do |t|
    t.boolean  "estatus"
    t.date     "data"
    t.integer  "interessado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trein_prof_titulars", force: true do |t|
    t.boolean  "estatus"
    t.date     "data"
    t.integer  "interessado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "valid_ponto_comers", force: true do |t|
    t.integer  "estatus"
    t.integer  "interessado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
