class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :subtitle
      t.text :descrip

      t.timestamps
    end
  end
end
