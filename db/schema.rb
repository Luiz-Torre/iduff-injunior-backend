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

ActiveRecord::Schema.define(version: 2021_01_30_200343) do

  create_table "coursecoordinators", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_coursecoordinators_on_user_id"
  end

  create_table "courses", force: :cascade do |t|
    t.integer "numberofstudent", default: 0
    t.integer "coursecoordinator_id"
    t.string "knowledgearea"
    t.string "headquarterscampus"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "code"
    t.index ["coursecoordinator_id"], name: "index_courses_on_coursecoordinator_id"
  end

  create_table "departmentcoordinators", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_departmentcoordinators_on_user_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.string "knowledgearea"
    t.string "headquarterscampus"
    t.integer "departmentcoordinator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["departmentcoordinator_id"], name: "index_departments_on_departmentcoordinator_id"
  end

  create_table "grades", force: :cascade do |t|
    t.integer "gradeone", default: 0
    t.integer "gradetwo", default: 0
    t.integer "student_id"
    t.integer "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_grades_on_student_id"
    t.index ["subject_id"], name: "index_grades_on_subject_id"
  end

  create_table "licenses", force: :cascade do |t|
    t.integer "teacher_id"
    t.integer "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_licenses_on_subject_id"
    t.index ["teacher_id"], name: "index_licenses_on_teacher_id"
  end

  create_table "prerequisites", force: :cascade do |t|
    t.integer "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "prerequisitecode"
    t.index ["subject_id"], name: "index_prerequisites_on_subject_id"
  end

  create_table "principals", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_principals_on_user_id"
  end

  create_table "schoolclasses", force: :cascade do |t|
    t.string "calendar"
    t.string "classroom"
    t.integer "numberofstudents", default: 0
    t.string "name"
    t.integer "subject_id"
    t.integer "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "vacancy"
    t.integer "grade_id"
    t.index ["grade_id"], name: "index_schoolclasses_on_grade_id"
    t.index ["subject_id"], name: "index_schoolclasses_on_subject_id"
    t.index ["teacher_id"], name: "index_schoolclasses_on_teacher_id"
  end

  create_table "schoolyears", force: :cascade do |t|
    t.integer "status", default: 0
    t.string "year"
    t.string "half"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.integer "user_id"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_students_on_course_id"
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "subjectoferreds", force: :cascade do |t|
    t.integer "subject_id"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_subjectoferreds_on_course_id"
    t.index ["subject_id"], name: "index_subjectoferreds_on_subject_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.string "knowledgearea"
    t.integer "workload"
    t.integer "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "period"
    t.index ["department_id"], name: "index_subjects_on_department_id"
  end

  create_table "subjectstudieds", force: :cascade do |t|
    t.integer "student_id"
    t.integer "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_subjectstudieds_on_student_id"
    t.index ["subject_id"], name: "index_subjectstudieds_on_subject_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.integer "user_id"
    t.integer "schoolclass_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["schoolclass_id"], name: "index_subscriptions_on_schoolclass_id"
    t.index ["user_id"], name: "index_subscriptions_on_user_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "department_id"
    t.index ["department_id"], name: "index_teachers_on_department_id"
    t.index ["user_id"], name: "index_teachers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "nationality"
    t.string "state"
    t.string "RG"
    t.date "birthdate"
    t.string "email"
    t.integer "role"
    t.string "cpf"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "registration"
    t.string "street"
    t.integer "number"
    t.string "district"
    t.string "complement"
    t.string "cep"
    t.string "telephone"
    t.string "cellphone"
  end

end
