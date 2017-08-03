class Api::V1::SongInfoController < ApplicationController
  def show
    @song = Song.find(params[:song_id])
    render 'show', formats: 'json', handlers: 'jbuilder'
  end
end
