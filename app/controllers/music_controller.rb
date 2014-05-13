class MusicController < ApplicationController

#MIGHT NEED COMMAS I DUNNO
before_filter :login_required, :only => :new :create :update :edit :destroy
  def new
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
  end

  def show
  end
end
