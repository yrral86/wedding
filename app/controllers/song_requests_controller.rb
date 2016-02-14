class SongRequestsController < ApplicationController
  before_action :set_song_request, only: [:show]

  # GET /song_requests
  # GET /song_requests.json
  def index
    @song_requests = SongRequest.all
  end

  # GET /song_requests/1
  # GET /song_requests/1.json
  def show
  end

  # GET /song_requests/new
  def new
    @song_request = SongRequest.new
  end

  # POST /song_requests
  # POST /song_requests.json
  def create
    @song_request = SongRequest.new(song_request_params)

    respond_to do |format|
      if @song_request.save
        format.html { redirect_to @song_request, notice: 'Song request was successfully created.' }
        format.json { render :show, status: :created, location: @song_request }
      else
        format.html { render :new }
        format.json { render json: @song_request.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song_request
      @song_request = SongRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def song_request_params
      params.require(:song_request).permit(:request)
    end
end
