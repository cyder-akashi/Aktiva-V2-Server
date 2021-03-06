module Admin
  # scffoldにより作成したsongのコントローラ
  class SongsController < ApplicationController
    before_action :set_song, only: %i[show edit update destroy]

    # GET /songs
    # GET /songs.json
    def index
      @songs = Song.all
    end

    # GET /songs/1
    # GET /songs/1.json
    def show
      @video_url = "http://133.242.226.13/" + @song.video
    end

    # GET /songs/new
    def new
      @song = Song.new
    end

    # GET /songs/1/edit
    def edit
    end

    # POST /songs
    # POST /songs.json
    def create
      @song = Song.new(song_params)
      message = "Song was successfully created."
      respond_to do |format|
        if @song.save
          format.html { redirect_to [:admin, @song], notice: message }
          format.json { render :show, status: :created, location: @song }
        else
          format.html { render :new }
          format.json { render json: @song.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /songs/1
    # PATCH/PUT /songs/1.json
    def update
      message = "Song was successfully updated."
      respond_to do |format|
        if @song.update(song_params)
          format.html { redirect_to @song, notice: message }
          format.json { render :show, status: :ok, location: @song }
        else
          format.html { render :edit }
          format.json { render json: @song.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /songs/1
    # DELETE /songs/1.json
    def destroy
      @song.destroy!
      message = "Song was successfully destroyed."
      respond_to do |format|
        format.html { redirect_to admin_songs_url, notice: message }
        format.json { head :no_content }
      end
    end

    private

      # Use callbacks to share common setup or constraints between actions.
      def set_song
        @song = Song.find(params[:id])
      end

      # Never trust parameters from the scary internet,
      # only allow the white list through.
      def song_params
        params.fetch(:song, {})
        params.require(:song).permit(
          :title, :artist_id, :lyricist_id, :composer_id,
          :choreographer_id, :beginners_badge, :person_badge, :video
        )
      end
  end
end
