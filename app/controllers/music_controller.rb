class MusicController < ApplicationController
require 'json'
require 'find'
  def new
    @music = Music.new
  end
  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
  @musics = Music.all
 # respond_to do |format|
	#rows.json {render json: @country}
  #end
  end
  
   def search
    
  end 
  
  def show
  @search=params[:key]
  @filter=params[:theme2]

  end
end
