class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genre = find_user_by_id
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(params.require(:genre).permit(:name))
  
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = find_user_by_id
  end

  def update
    @genre = find_user_by_id
    @genre.update(params.require(:genre).permit(:name))

    redirect_to genre_path(@genre)
  end


  private

  def find_user_by_id
    Genre.find(params[:id])
  end
end
