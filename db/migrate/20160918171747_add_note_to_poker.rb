class AddNoteToPoker < ActiveRecord::Migration[5.0]
  def change
    add_column :pokers, :note, :integer, null: false, default: 0
  end
end
