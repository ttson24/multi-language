class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :blog_id
      t.string :email
      t.text :body

      t.timestamps
    end
  end
end
