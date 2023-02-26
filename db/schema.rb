# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_02_26_184955) do
  create_table "alunos", force: :cascade do |t|
    t.string "nome"
    t.string "sobrenome"
    t.string "cpf"
    t.string "email"
    t.string "telefone"
    t.string "endereco"
    t.string "cep"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matriculas", force: :cascade do |t|
    t.string "matricula"
    t.string "curso"
    t.string "tipo_curso"
    t.string "modalidade"
    t.string "turno"
    t.string "periodo"
    t.date "data_matricula"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end