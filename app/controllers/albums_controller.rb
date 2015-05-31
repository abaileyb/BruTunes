class AlbumsController < ApplicationController

	def show
		@album = Album.find params[:id]
		# id = params[:id]
	end

	def new
		@artist = Artist.find(params[:artist_id])
    	@album = @artist.albums.find(params[:id])
	end

	def create
<<<<<<< HEAD
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
	    @artist = Artist.find(params[:artist_id])
	    @album = @artist.albums.find(params[:id])
	    @album.destroy
	    redirect_to album_path(@album)
=======
     	@artist = Artist.find(params[:artist_id])
     	@album = @artist.albums.create(album_params)
     	redirect_to artist_path(@artist)
    end
 
 	def destroy
    	@artist = Artist.find(params[:artist_id])
   		@album = @artist.albums.find(params[:id])
    	@album.destroy
    	redirect_to artist_path(@artist)
>>>>>>> 072363b3d638a5fee1d3dcd5f7151787fee02e9a
  	end 

  private
    def album_params
        params.require(:album).permit(:name, :year, :artist_id, :cover_photo)
    end


end
