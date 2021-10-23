class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  # def set_list_movies
  #   @movies.list = @list
  # end

  def movie_params
    params.require(:movie).permit(:name, :overview, :poster_url, :rating)
  end

end
