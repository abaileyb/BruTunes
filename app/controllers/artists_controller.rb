class ArtistsController < ApplicationController
	def index
		@artists = Artist.all.order(:name)
	end

	def show
		@artist = Artist.find params[:id]
		# id = params[:id]
	end

	def new
		@artist = Artist.new
	end

	def edit
    	@artist = Artist.find params[:id]
	end

	def create
		@artist = Artist.new(artist_params)
		@artist.save
		redirect_to @artist
		#render plain: params['artist'].inspect
	end

	def update
 	 	@artist = Artist.find params[:id]
 
  		if @artist.update(artist_params)
    		redirect_to @artist
 		else
    		render 'edit'
 		end

	end
 
 	def destroy
   		@artist = Artist.find params[:id]
    	@artist.destroy
 
   		redirect_to artists_path
  	end

  private
	def artist_params
		params.require(:artist).permit(:name, :bio)
	end
end
