class CreateSketches < ActiveRecord::Migration[5.2]
  def change
    create_table :sketches do |t|
      t.integer :user_id
      t.integer :width
      t.integer :height
      t.integer :pointerX
      t.integer :pointerY
      t.string :data

      t.timestamps
    end
  end
end
