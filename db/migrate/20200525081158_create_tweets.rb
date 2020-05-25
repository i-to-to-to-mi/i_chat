class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.text        :text, null: false
      t.text        :image, null: false
      t.references :user, foreign_key: true
      t.timestamps null: true
    end
  end
end
