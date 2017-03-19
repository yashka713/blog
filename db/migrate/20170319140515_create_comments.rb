class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :post, foreign_key: true

      t.timestamps
    end
  end

  # def self.up
  #   rename_column :table_name, :old_column, :new_column
  #   rename_column :users, :email, :email_address
  #   rename_column :comments, :references, :email_address
  # end

end
