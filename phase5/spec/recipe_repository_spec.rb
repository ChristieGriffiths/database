require "recipe_repository"

RSpec.describe RecipeRepository do 
  def reset_recipe_table
    seed_sql = File.read('spec/seeds_recipe_test.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'recipes_directory_test' })
    connection.exec(seed_sql)
  end

  before(:each) do 
    p 'position 1'
    reset_recipe_table
  end

  it "returns all recipes" do
    repo = RecipeRepository.new
    recipes = repo.all

    expect(recipes.length).to eq (2)
    expect(recipes[0].id).to eq ("1")
    expect(recipes[0].name).to eq ("Lasagne")
    expect(recipes[0].average_cooking_time).to eq ("60")
    expect(recipes[0].rating).to eq ("5")
    expect(recipes[1].id).to eq ("2")
    expect(recipes[1].name).to eq ("Apple Crumble")
    expect(recipes[1].average_cooking_time).to eq ("45")
    expect(recipes[1].rating).to eq ("4")
  end

  it "Finds and returns the recipe with index 1" do
    repo = RecipeRepository.new
    recipe = repo.find(1)
    p recipe 

    expect(recipe.id).to eq ("1") # =>  1
    expect(recipe.name).to eq ("Lasagne") # =>  'Lasagne'
    expect(recipe.average_cooking_time).to eq ("60") # =>  '60'
    expect(recipe.rating).to eq ("5") # => '5'
  end 

  it "Finds and returns the recipe with the index 2" do 
    repo = RecipeRepository.new
    recipe = repo.find(2)

    expect(recipe.id).to eq ("2")
    expect(recipe.name).to eq ("Apple Crumble")
    expect(recipe.average_cooking_time).to eq ("45")
    expect(recipe.rating).to eq ("4")
  end

end 
