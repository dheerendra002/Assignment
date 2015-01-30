class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment
      t.integer :qid
      t.integer :ansid

      t.timestamps null: false
    end
  end
end