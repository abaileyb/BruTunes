class AlbumsController < ApplicationController

	def create
     	@artist = Artist.find(params[:artist_id])
     	@album = @artist.albums.create(album_params)
     	redirect_to artist_path(@artist)
    end
 
 	def destroy
    	@artist = Artist.find(params[:artist_id])
   		@album = @artist.albums.find(params[:id])
    	@album.destroy
    	redirect_to artist_path(@artist)
  	end

  private
    def album_params
      params.require(:album).permit(:name, :year, :artist_id, :cover_photo)
    end
end
