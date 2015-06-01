class AlbumsController < ApplicationController
	def index
		@albums = Album.all.order(:name)
	end

	def show
		@album = Album.find(params[:id])
	end

	def new
		@album = Album.find(album_params)
	end

	def create
		@artist = Artist.find(params[:id])

		@album = @artist.albums.create(album_params)
		if @album.save
			redirect_to album_path
            # if anything went wrong, if may be caused by 'album_path'
		else
			render 'new'
		end
	end

	def edit
		@album = Album.find(params[:id])
	end

	def update
		@album = Album.find(params[:id])
		if @album.save
        	redirect_to artist_album_path
		else
        	render 'edit'
		end
	end

    def destroy
    	@album = Album.find(params[:id])
		@album.destroy
 		redirect_to albums_path
    end

    private
    	def album_params
			params.require(:album).permit(:name, :year, :artist_id, :cover_photo)
		end
end