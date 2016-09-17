class AddUserToUserStory < ActiveRecord::Migration[5.0]
  def change
    add_reference :user_stories, :user, foreig_key: true, index: { name: "user_owner_index" }
  end
end
