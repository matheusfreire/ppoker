class CreatePokers < ActiveRecord::Migration[5.0]
  def change
    create_table :pokers do |t|

      t.timestamps
    end
  end
end
