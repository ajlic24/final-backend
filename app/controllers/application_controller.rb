class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  #---------------Language routes---------------------#
  
  get "/languages" do
    Language.all.to_json
  end

  post "/languages" do
    new_lang = Language.create(name: params[:name], description: params[:description])
    new_lang.to_json
  end
  
  #--------------Command routes-----------------------#

  get "/commands" do
    Command.all.to_json
  end

  get "/:lang" do
    lang = Language.find_by(name: params[:lang]).commands
    lang.to_json(only: [:id, :name, :description])
  end

  post "/commands" do
    new = Command.create(name: params[:name], description: params[:description], language_id: params[:language_id])
    new.to_json
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
