module Api
  module V1
    class ArtistsController < ApplicationController
      expose :artists, -> { Artist.all }
      expose :artist

      def index
        respond_with artists
      end

      def update
        artist.update(artist_params)
        respond_with artist
      end

      private

      def artist_params
        params.require(:artist).permit(:favorite)
      end
    end
  end
end
