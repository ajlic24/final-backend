class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/ruby" do
    ruby = Language.find_by(name: 'Ruby').commands
    ruby.to_json(only: [:id, :name, :description])
  end

  get "/javascript" do
    ruby = Language.find_by(name: 'Javascript').commands
    ruby.to_json(only: [:id, :name, :description])
  end

  post "/ruby" do
    Command.create(name: params[:name], description: params[:description], language: Language.find_by(name: "Ruby"))
  end

  post "/javascript" do
    Command.create(name: params[:name], description: params[:description], language: Language.find_by(name: "Javascript"))
  end

end
