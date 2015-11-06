class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :email, null:false
      t.text :body,null:false

      t.timestamps null:false
    end
  end
end
