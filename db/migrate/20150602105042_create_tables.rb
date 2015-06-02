class CreateTables < ActiveRecord::Migration
  def change
    create_table "questions" do |t|
      t.text "prompt"
    end

    create_table "users" do |t|
      t.string "name"
    end

    create_table "answers" do |t|
      t.integer "user_id"
      t.integer "question_id"
      t.text "answer"
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end
