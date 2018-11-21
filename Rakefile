ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'

desc "Open an irb session preloaded with this library"
task :console do
  # sh "irb -rubygems -I lib -r whois.rb"
  pry.start
end


# Type `rake -T` on your command line to see the available rake tasks.
