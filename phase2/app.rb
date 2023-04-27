require_relative 'lib/database_connection'
require 'pg'

# We need to give the database name to the method `connect`.
DatabaseConnection.connect('music_database')

# Perform a SQL query on the database and get the result set.
sql = 'SELECT id, title FROM albums;'
result = DatabaseConnection.exec_params(sql, [])
result 

album_repository = AlbumsRepository.new
album_repository.find(3)


result.each do |record|
  p record
end