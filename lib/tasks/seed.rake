# 
# To change this template, choose Tools | Templates
# and open the template in the editor.
 

require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

namespace :db do
  desc "Load seed fixtures (from db/fixtures) into the current environment's database." 
  task :seed => :environment do
    require 'active_record/fixtures'
    Dir.glob(RAILS_ROOT + '/db/fixtures/*.yml').each do |file|
      Fixtures.create_fixtures('db/fixtures', File.basename(file, '.*'))
    end
    Dir.glob(RAILS_ROOT + '/db/fixtures/*.csv').each do |file|
      Fixtures.create_fixtures('db/fixtures', File.basename(file, '.*'))
    end
  end
  
  desc "Dump data into fixtures (db/fixtures/*.yml) from the current environment's database." 
  task :dump_fixtures => :environment do
    require 'active_record/fixtures'
    # get tables in DB
    interesting_tables = ActiveRecord::Base.connection.tables.sort.reject! { |tbl| ['schema_info', 'sessions', 'public_exceptions'].include?(tbl) }

    # loop through "interesting tables"
    FileUtils.chdir(RAILS_ROOT + '/db/fixtures/')
    interesting_tables.each do |tbl|
      klass = tbl.classify.constantize
      puts "Writing #{tbl}..."
      File.open("#{tbl}.yml", 'w+') { |f| YAML.dump klass.find(:all).collect(&:attributes), f }      
    end
  end
    
end