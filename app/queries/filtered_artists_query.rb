class FilteredArtistsQuery
  FILTERS = %i[by_name by_genres by_favorite].freeze

  def initialize(params = {}, relation = Artist.all)
    @params = params
    @relation = relation
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

    genres = genres.map { |genre| "'#{genre}'" } * ","

    @relation.where("genres::jsonb ?| array[#{genres}]")
  end

  def by_favorite
    favorite = @params[:favorite].to_s

    return @relation unless %w[true false].include?(favorite)

    @relation.where(favorite: favorite)
  end
end
