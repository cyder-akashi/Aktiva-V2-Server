class Api::V1::SongInfoController < ApplicationController
  def show
    @song = Song.find(params[:song_id])
    if @song.artist_id.present? then
      @artist = Person.find(@song.artist_id)
    end
    if @song.lyricist_id.present? then
      @lyricist = Person.find(@song.lyricist_id)
    end
    if @song.composer_id.present? then
      @composer = Person.find(@song.composer_id)
    end
    if @song.choreographer_id.present? then
      @choreographer = Person.find(@song.choreographer_id)
    end
    render 'show', formats: 'json', handlers: 'jbuilder'
  end
end
