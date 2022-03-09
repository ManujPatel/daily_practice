class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :Title
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end
end
