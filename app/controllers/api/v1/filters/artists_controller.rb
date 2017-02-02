module Api
  module V1
    module Filters
      class ArtistsController < ApplicationController
        expose :articles, -> { SortedArtistsQuery.new(filter_params).all }

        def index
          respond_with articles
        end

        private

        def filter_params
          params.permit(:favorite, :name, genres: [])
        end
      end
    end
  end
end
