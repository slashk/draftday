class AddPickForeignKeys < ActiveRecord::Migration
  def self.up

     execute "alter table picks 
     add constraint fk_picks_teams 
     foreign key (team_id) references teams(id)"
     
     # Make sure all DBs are UTF8 compliant for Spanish names
     execute "ALTER DATABASE DraftDay_development CHARSET=utf8"
     execute "ALTER DATABASE DraftDay_test CHARSET=utf8"
     execute "ALTER DATABASE DraftDay_development CHARSET=utf8"
  end

  def self.down
  end
end
