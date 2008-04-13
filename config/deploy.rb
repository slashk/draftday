#
# this is the new recipe
# from http://forum.slicehost.com/comments.php?DiscussionID=809
#

require 'mongrel_cluster/recipes_2'

set :application, "DraftDay"
#set :repository,  "http://theassoc.textdriven.com/svn/DraftDay/trunk/"

set :local_repository,  "svn+ssh://www.mtbcalendar.com/home/kpepple/svn/draftday/"
set :repository, "file:///home/kpepple/svn/draftday"


set :deploy_to, "/var/www/#{application}"

set :user, "kpepple"

#set :deploy_via, :export
set :runner, nil
set :mongrel_conf, "#{deploy_to}/current/config/mongrel_cluster.yml"

set :domain, "www.theassocofspecialtysports.com"
role :app, domain
role :web, domain
role :db, domain, :primary => true

ssh_options[:keys] = %w(/home/kpepple/.ssh/id_rsa)
ssh_options[:port] = 22

namespace :deploy do
        task :restart do
#               restart_mongrel_cluster
                sudo "mongrel_rails cluster::restart -C #{mongrel_conf}"
        end
end
