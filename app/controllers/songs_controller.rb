class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find_by(id: params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)

    if @song.save
      redirect_to songs_path
    else
      render :new
    end
  end

  def edit
    @song = Song.find_by(id: params[:id])
  end

  def update
    @song = Song.find_by(id: params[:id])

    if song_params[:language] == 'pt'
      # @song.title_pt = song_params[:title]
      # @song.description_pt = song_params[:description]
      # @song.content_pt = song_params[:content]

      previous_locale = I18n.locale
      I18n.locale = :pt

      if @song.update(song_params)
        I18n.locale = previous_locale
        redirect_to songs_path
      else
        render :edit
      end
    else
      if @song.update(song_params)
        redirect_to songs_path
      else
        render :edit
      end
    end
  end

  private

  def song_params
    params.require(:song).permit(:title, :description, :content, :language)
  end
end
