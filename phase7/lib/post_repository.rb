



def reset_tables
  seed_sql = File.read('spec/social_network_test.sql')
  connection = PG.connect({ host: '127.0.0.1', dbname: 'social_network' })
  connection.exec(seed_sql)
end

describe UserRepository do
  before(:each) do 
    reset_tables
  end

  # (your tests will go here).
end