class CreateLessonClasses < ActiveRecord::Migration[6.0]
  def change
      create_table :lesson_classes do |t|
      t.string :classname, null: false
      t.string :season, null: false
      t.string :year, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
