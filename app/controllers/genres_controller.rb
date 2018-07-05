class GenresController < ApplicationController
  before_action :set_genre, only: [:show, :edit, :update, :destroy]
  def index
    @genres = Genre.all
  end

  def show
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(prep_params(:name))
    redirect_to genre_path(@genre)
  end

  def edit

  end

  def update
    @genre.update(prep_params(:name))
    redirect_to genre_path(@genre)
  end

  private

  def set_genre
    @genre = Genre.find(params[:id])
  end

  def prep_params(*args)
    params.require(:genre).permit(*args)
  end

end
