# README
The purpose of this app is to integrate the following:

* Google Maps API
* Devise (for authentication)
* Elastic Search (possibly)
* Materialize (CSS)
* PostgreSQL for storing users and addresses
* Petergate (For authorization)

Programmers will be able to create an account with an address. This will let potential employers know who is available and where they live to be able to recruit them.

# Index Page
The index page will be just a landing page with a search field by city. The user will input what city they are looking for programmers in and then it will show up on the map on the next page.

# Edit User
The account user will be able to modify their account info and address on this page along with a possible salary expectation.
The users profile picture will be their Gravatar image.

# Database Tables
```ruby
create_table "users", force: :cascade do |t|
  t.string "first_name",        default: "", null: false
  t.string "last_name",         default: "", null: false
  t.string "address",           default: "", null: false
  t.string "city",              default: "", null: false
  t.string "state",             default: "", null: false
  t.string "postal_code",       default: "", null: false
  t.string "complete_address",  index: true
  t.string "roles"

  t.string "email",              default: "", null: false
  t.string "encrypted_password", default: "", null: false
  t.string "reset_password_token"
  t.datetime "reset_password_sent_at"
  t.datetime "remember_created_at"
  t.integer "sign_in_count",     default: 0, null: false
  t.datetime "current_sign_in_at"
  t.datetime "last_sign_in_at"
  t.inet "current_sign_in_ip"
  t.inet "last_sign_in_ip"
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
  t.index ["email"], name: "index_users_on_email", unique: true
  t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
end

class DeviseCreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.inet     :current_sign_in_ip
      t.inet     :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false

      t.string :first_name,        default: "", null: false
      t.string :last_name,         default: "", null: false
      t.string :address,           default: "", null: false
      t.string :city,              default: "", null: false
      t.string :state,             default: "", null: false
      t.string :postal_code,       default: "", null: false
      t.string :complete_address
      t.string :roles
    end
    add_index :users, :complete_address
    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
```

# Pages
* Index Page
* Search Page
* Profile Page
