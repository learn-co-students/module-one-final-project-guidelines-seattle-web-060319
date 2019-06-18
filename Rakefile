require_relative 'config/environment'
require 'sinatra/activerecord/rake'

require_all 'lib/models'

desc 'starts a console'
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  Pry.start
end

task :test1 do
  login = UserInteraction.new
  login.test1
end
