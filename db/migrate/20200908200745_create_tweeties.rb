class CreateTweeties < ActiveRecord::Migration[6.0]
  def change
    create_table :tweeties do |t|
      t.text :message

      t.timestamps
    end
  end
end
