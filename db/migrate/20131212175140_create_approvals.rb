class CreateApprovals < ActiveRecord::Migration
  def change
    create_table :approvals do |t|
      t.integer :approved_by
      t.integer :comment_id

      t.timestamps
    end
  end
end
