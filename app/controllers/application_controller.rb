class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/pets" do
    pets = Pet.all 
    pets.to_json
  end

  get "/movies" do
    movies = Movie.all 
    movies.to_json
  end

  get "/actors" do
    actors = Actor.all 
    actors.to_json
  end

  get "/roles" do
    roles = Role.all 
    roles.to_json
  end

  post '/roles' do
    role = Role.create(
      name: params[:name],
      gender: params[:gender],
      lead: params[:lead],
      actor_id: params[:actor_id],
      movie_id: params[:movie_id]
    )
    role.to_json
  end

  delete '/roles/:id' do
    role = Role.find(params[:id])
    role.destroy
    role.to_json
  end

  patch '/roles/:id' do
    role = Role.find(params[:id])
    role.update(
      name: params[:name]
    )
    role.to_json
  end

end
