class ArtworksController < ApplicationController
     def index
        artworks = Artwork.all
        render json: artworks
    end


    def show
        artwork = Artwork.find(params[:id])
        render json: artwork

    end

    def create
        artwork = Artwork.new(artwork_params)
        if artwork.save
            # render json: artworks
            redirect_to artworks_url
        else
            render json: artwork.errors.full_message, status: 422
        end
    end

    def update
        artwork = Artwork.find(params[:id])
       if artwork.update(artwork_params) 
            # render json: artwork
            redirect_to artwork_url(artwork.id)
       else
        render json: artwork.errors.full_message, status: 422
       end
    end

    def destroy
        artwork = Artwork.find(params[:id])
        artwork.destroy
        redirect_to artworks_url
    end

    private 

    def artwork_params
        params.require(:artwork).permit(:title, :img_url, :artist_id)
    end

end