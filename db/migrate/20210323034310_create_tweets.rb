class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string     :name,       null:false
      t.text       :ingredient, null:false
      t.text       :make,       null:false
      t.integer    :genre_id,   null: false
      t.references :user,   foreign_key: true
      t.timestamps
    end
  end
end
