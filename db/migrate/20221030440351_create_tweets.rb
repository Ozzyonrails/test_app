class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.references :user, foreign_key: true, index: false
      t.text :body
      t.timestamps
    end
  end
end
