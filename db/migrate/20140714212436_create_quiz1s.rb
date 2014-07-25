class CreateQuiz1s < ActiveRecord::Migration
  def change
    create_table :quiz1s do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.integer :score

      t.timestamps
    end
  end
end
