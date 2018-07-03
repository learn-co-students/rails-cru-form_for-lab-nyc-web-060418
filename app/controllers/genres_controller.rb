class GenresController < ApplicationController
  before_action :fetch_genre, only: [:show, :edit, :update]


  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    @genre.save
    redirect_to @genre
  end

  def edit
  end

  def update
    @genre.update(genre_params)
    redirect_to @genre
  end

  def show
  end


  private
  def fetch_genre
    @genre = Genre.find(params[:id])
  end

  def genre_params
    params.require(:genre).permit(:name)
  end
end
