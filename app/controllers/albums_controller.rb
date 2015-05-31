class AlbumsController < ApplicationController
	def index
	@albums = Album.all
	end

	def show
		@album = Album.find(params[:id])
		# id = params[:id]
	end

	def new
		@artist = Artist.find(params[:artist_id])
    	@album = @artist.albums.find(params[:id])
	end

	def create
	    @artist = Artist.find(params[:artist_id])
	    @album = @artist.albums.create(album_params)
		if @album.save
		   @album = redirect_to album_path(@album)
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
		   @album = redirect_to album_path(@album)
		else
		   render 'edit'
		end
 	end

 	def destroy
     	@album = Album.find(params[:id])
		@album.destroy

     	redirect_to album_path(@album)
    end

  private
    def album_params
        params.require(:album).permit(:name, :year, :artist_id, :cover_photo)
    end
end





