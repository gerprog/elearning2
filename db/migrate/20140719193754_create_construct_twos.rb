class CreateConstructTwos < ActiveRecord::Migration
  def change
    create_table :construct_twos do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
