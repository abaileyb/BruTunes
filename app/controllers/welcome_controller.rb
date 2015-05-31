class WelcomeController < ApplicationController
  def index
  	@artists = Artist.all.order(:name)
  	@albums = Album.all.order(:name)
  end
end
