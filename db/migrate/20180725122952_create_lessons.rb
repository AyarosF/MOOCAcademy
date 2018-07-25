class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :body
      #création de l'attribut course_id dans la table lessons 
      t.belongs_to :course, index: true
      t.timestamps
    end
  end
end
