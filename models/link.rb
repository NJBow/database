ENV["RACK_ENV"] ||= "development"

require 'data_mapper'
require 'dm-postgres-adapter'
require_relative './tag.rb'


class Link
  include DataMapper::Resource

  has n, :tags, through: Resource

  property :id,     Serial
  property :title,  String
  property :url,    String
end
<<<<<<< HEAD

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
=======
>>>>>>> d84bf96edac2a3b5cb8bab26c6024be342bb6922
