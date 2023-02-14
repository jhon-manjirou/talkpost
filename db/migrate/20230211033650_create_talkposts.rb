class CreateTalkposts < ActiveRecord::Migration[7.0]
  def change
    create_table :talkposts do |t|
      t.text :content

      t.timestamps
    end
    add_index :talkposts, :created_at
  end
end
