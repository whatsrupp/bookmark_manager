require_relative './data_mapper_setup'

class Links

  include DataMapper::Resource

  has n, :tags, through: Resource

  property :id,    Serial
  property :title, String
  property :url,   String

end

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV["RACK_ENV"]}")
DataMapper.finalize
DataMapper.auto_upgrade!
