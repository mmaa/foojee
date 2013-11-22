class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string    :name, null: false
      t.string    :email, null: false

      t.string    :crypted_password
      t.string    :salt

      t.string    :remember_me_token
      t.datetime  :remember_me_token_expires_at

      t.integer   :failed_logins_count, default: 0, null: false
      t.datetime  :lock_expires_at
      t.string    :unlock_token

      t.string    :reset_password_token
      t.datetime  :reset_password_token_expires_at
      t.datetime  :reset_password_email_sent_at

      t.datetime  :last_login_at
      t.datetime  :last_logout_at
      t.datetime  :last_activity_at
      t.string    :last_login_from_ip_address

      t.timestamps
    end

    add_index :users, :remember_me_token
    add_index :users, :reset_password_token
    add_index :users, [:last_logout_at, :last_activity_at]
  end
end
