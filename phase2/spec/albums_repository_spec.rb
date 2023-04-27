 require'albums_repository'

describe AlbumsRepository do 
  def reset_albums_table
    seed_sql = File.read('spec/seeds_music_library.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'music_database' })
    connection.exec(seed_sql)
  end

  before(:each) do 
    reset_albums_table
  end 

  it '' do
    repo = AlbumsRepository.new
    albums = repo.all 

    expect(albums.length).to eq 2
    expect(albums.first.id).to eq "1"
    expect(albums.first.title).to eq "The River"
    expect(albums.first.artist_id).to eq "1"
  end

  it "returns the The River as a single album" do 
      repo = AlbumsRepository.new
      artist = repo.find(1)
      expect(artist.title).to eq('The River')
      expect(artist.release_year).to eq ('1980')
      expect(artist.artist_id).to eq ('1')
  end    
  
  it "returns Surfer Rosa as single album" do 
    repo = AlbumsRepository.new
    artist = repo.find(2)
    expect(artist.title ).to eq('Moondance')
    expect(artist.release_year).to eq('1970')
    expect(artist.artist_id).to eq('20')
  end 


end 


