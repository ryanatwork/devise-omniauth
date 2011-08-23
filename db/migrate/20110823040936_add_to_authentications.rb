class AddToAuthentications < ActiveRecord::Migration
   def self.up
    create_table :authentications do |t|
      t.integer :user_id
      t.string :provider
      t.string :uid
      t.string :access_token
      t.string :access_secret
      t.timestamps
    end
  end

  def self.down
    drop_table :authentications
  end
end
