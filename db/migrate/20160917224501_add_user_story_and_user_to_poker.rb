class AddUserStoryAndUserToPoker < ActiveRecord::Migration[5.0]
  def change
    add_reference :pokers, :user, foreig_key: true, index: { name: "user_on_poker" }
    add_reference :pokers, :user_story, foreig_key: true, index: { name: "stories_on_poker" }
  end
end
