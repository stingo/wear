# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_01_25_003917) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fashions", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_fashions_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "price"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.jsonb "postimages"
    t.integer "user_id"
    t.integer "fashion_id"
    t.string "video_link"
    t.string "listing_token"
    t.string "stock"
    t.string "website_url"
    t.string "currency"
    t.index ["fashion_id"], name: "index_posts_on_fashion_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.string "first_name"
    t.string "last_name"
    t.string "displayname"
    t.string "phone_number"
    t.boolean "agreed_with_terms", default: false
    t.string "verified"
    t.float "longitude"
    t.float "latitude"
    t.string "local_area"
    t.string "area_code"
    t.string "town"
    t.string "country"
    t.string "currency"
    t.datetime "date_of_birth"
    t.string "gender"
    t.string "pesnavatar"
    t.boolean "admin", default: false
    t.text "summary"
    t.string "facebookurl"
    t.string "twitterurl"
    t.string "youtubeurl"
    t.string "pinteresturl"
    t.string "instagramurl"
    t.string "websiteurl"
    t.string "verificationphoto"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["slug"], name: "index_users_on_slug"
  end

end
