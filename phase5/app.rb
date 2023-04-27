require_relative 'lib/database_connection'
require_relative 'recipe_respository'
require_relative 'recipe'

DatabaseConnection.connect('recipe_directory')
