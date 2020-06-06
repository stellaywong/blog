class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :article, null: false, foreign_key: true  #does this automatically create an association with the resource it lists?

      t.timestamps
    end
  end
end
