class SortedArtistsQuery
  FILTERS = %i(by_name by_genres by_favorite)

  def initialize(params = {}, relation = Artist.all)
    @relation = relation
    @params = params
  end

  def all
    FILTERS.each do |filter|
      @relation = public_send(filter)
    end

    @relation
  end

  def by_name
    name = @params[:name]

    return @relation if name.blank?

    @relation.where("name ILIKE ?", "%#{name}%")
  end

  def by_genres
    genres = @params[:genres]

    return @relation unless genres.present? && genres.is_a?(Array)

    @relation.where("genres ?|| array[#{genres.join(',')}]")
  end

  def by_favorite
    favorite = @params[:favorite]

    return @relation unless favorite == "true" || favorite == "false"

    @relation.where(favorite: favorite)
  end
end
