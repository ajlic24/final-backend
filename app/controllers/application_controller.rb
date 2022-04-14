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
    ruby = Command.create(name: params[:name], description: params[:description], language: Language.find_by(name: "Ruby"))
    ruby.to_json
  end

  post "/javascript" do
    javascript = Command.create(name: params[:name], description: params[:description], language: Language.find_by(name: "Javascript"))
    javascript.to_json
  end

  patch "/commands/:id" do
    to_patch = Command.find(params[:id])
    to_patch.update(name: params[:name], description: params[:description])
    to_patch.to_json
  end

  delete "/commands/:id" do
    to_delete = Command.find(params[:id])
    to_delete.destroy
    to_delete.to_json
  end

end
