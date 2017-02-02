module Api
  module V1
    class ArtistsController < ApplicationController
      expose :artists, -> { Artist.all }

      def index
        respond_with artists
      end
    end
  end
end
