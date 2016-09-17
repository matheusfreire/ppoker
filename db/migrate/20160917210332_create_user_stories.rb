class CreateUserStories < ActiveRecord::Migration[5.0]
  def change
    create_table :user_stories do |t|
      t.string :name

      t.timestamps
    end
  end
end
