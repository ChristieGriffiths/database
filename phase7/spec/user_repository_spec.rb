require 'user_repository'
require 'pg'


def reset_tables
  seed_sql = File.read('spec/social_network_test.sql')
  connection = PG.connect({ host: '127.0.0.1', dbname: 'social_network' })
  connection.exec(seed_sql)
end

describe UserRepository do
  
  before(:each) do 
    reset_tables
  end

  it 'returns all users' do

    repo = UserRepository.new
    users = repo.all

    expect(users.length).to eq 2
    expect(users[0].id).to eq '13'
    expect(users[0].user_name).to eq 'John Cardiel'
    expect(users[0].email_address).to eq 'allhailcardiel@gmail.com'
  end
end