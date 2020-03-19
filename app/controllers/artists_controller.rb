class ArtistsController < ApplicationController
  def index 
    @artists = Artist.all

    # render :index
  end 

  def show 
    @artist = Artist.find(params[:id])
    @artist_instrument = ArtistInstrument.new
    @instruments = Instrument.all
    # render :show
  end 

  def new 
    @artist = Artist.new

    # render :new
  end 

  def create 
    @artist = Artist.new(artist_params)

    if @artist.save
      flash[:success] = "beutifull you have done and amazing job"
      redirect_to @artist
    else 
      flash[:errors] = @artist.errors.full_messages
      redirect_to new_artist_path
    end 

  end 


  private 

  def artist_params
    params.require(:artist).permit(:name, :title, :age)
  end 
end
