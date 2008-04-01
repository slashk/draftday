# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 11) do

  create_table "picks", :force => true do |t|
    t.integer  "player_id",   :null => false
    t.integer  "team_id",     :null => false
    t.integer  "pick_number", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", :force => true do |t|
    t.integer "yahoo_ref", :default => 0
    t.string  "player"
    t.string  "team"
    t.string  "pos"
    t.string  "status"
    t.integer "rank",      :default => 1300
    t.float   "IP"
    t.integer "W"
    t.integer "SV"
    t.integer "K"
    t.float   "ERA"
    t.float   "WHIP"
    t.integer "R"
    t.integer "HR"
    t.integer "RBI"
    t.integer "SB"
    t.float   "AVG"
    t.integer "orank"
    t.string  "ab"
    t.integer "prank"
    t.integer "depth"
    t.string  "note"
    t.integer "pHR"
    t.integer "pR"
    t.integer "pRBI"
    t.integer "pSB"
    t.float   "pBA"
    t.integer "pK"
    t.integer "pW"
    t.integer "pSV"
    t.float   "pERA"
    t.float   "pWHIP"
  end

  add_index "players", ["player"], :name => "index_players_on_player"
  add_index "players", ["pos"], :name => "index_players_on_pos"
  add_index "players", ["team"], :name => "index_players_on_team"
  add_index "players", ["rank"], :name => "index_players_on_rank"

  create_table "sessions", :force => true do |t|
    t.string   "session_id"
    t.text     "data"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"

  create_table "teams", :force => true do |t|
    t.string  "full_name"
    t.string  "short_name"
    t.string  "owner"
    t.integer "team_yahoo_ref"
    t.integer "draft_order",    :default => 1
  end

  create_table "users", :force => true do |t|
    t.string  "login"
    t.string  "password"
    t.string  "email"
    t.integer "team_id"
    t.string  "role"
  end

end
