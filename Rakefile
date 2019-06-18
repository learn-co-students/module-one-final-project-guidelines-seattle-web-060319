require_relative 'config/environment'
require 'sinatra/activerecord/rake'

require_all 'lib/models'

desc 'starts a console'
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  Pry.start
end

task :run do
  login = user_interaction.new
  login.run
end
