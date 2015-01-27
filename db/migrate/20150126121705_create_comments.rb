class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.integer :qid
      t.integer :ansid
      t.references :qid, index: true

      t.timestamps null: false
    end
    add_foreign_key :comments, :qid
  end
end
