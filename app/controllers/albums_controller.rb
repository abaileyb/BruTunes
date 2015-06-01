class AlbumsController < ApplicationController
	def index
		@albums = Album.all.order(:name)
	end

	def show
		@album = Album.find(params[:id])
	end

	def new
		@artist = Artist.find(params[:artist_id])
    	@album = @artist.albums.new(album_params)
	end

	def create
	    @artist = Artist.find(params[:artist_id])
	    @album = @artist.albums.create(album_params)
		if @album.save
			redirect_to album_path
		   # if anything went wrong, if may be caused by 'album_path'
		else
			render 'new'
	    end
    end
 
	def edit
		@artist = Artist.find(params[:artist_id])
	    @album = @artist.albums.find(params[:id])
	end

	def update
		@artist = Artist.find(params[:artist_id])
	    @album = @artist.albums.create(album_params)
		if @album.save
			redirect_to album_path
		else
			render 'edit'
		end
 	end

 	def destroy
 		@artist = Artist.find(params[:artist_id])
     	@album = @artist.albums.find(params[:id])
		@album.destroy
     	redirect_to albums_path
    end

  private
    def album_params
        params.require(:album).permit(:name, :year, :artist_id, :cover_photo)
    end
end