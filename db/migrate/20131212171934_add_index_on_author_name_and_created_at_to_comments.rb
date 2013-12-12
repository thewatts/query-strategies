class AddIndexOnAuthorNameAndCreatedAtToComments < ActiveRecord::Migration
  def change
    add_index :comments, [:author_name, :created_at]
  end
end
