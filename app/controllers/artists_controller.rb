class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = find_user_by_id
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(params.require(:artist).permit(:name, :bio))

    redirect_to artist_path(@artist)
  end

  def edit
    @artist = find_user_by_id
  end

  def update
    @artist = find_user_by_id
    @artist.update(params.require(:artist).permit(:name, :bio))

    redirect_to artist_path(@artist)
  end


  private

  def find_user_by_id
    Artist.find(params[:id])
  end

end
