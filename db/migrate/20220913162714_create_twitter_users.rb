class CreateTwitterUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :twitter_users do |t|
      t.string :email
      t.string :username

      t.timestamps
    end
  end
end
