class CreateConstructOnes < ActiveRecord::Migration
  def change
    create_table :construct_ones do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
