class YoutubeUrlsController < ApplicationController
  before_action :set_youtube_url, only: [:show, :edit, :update, :destroy]

  # GET /youtube_urls
  # GET /youtube_urls.json
  def index
    @youtube_urls = YoutubeUrl.all
  end

  # GET /youtube_urls/1
  # GET /youtube_urls/1.json
  def show
	
  end

  # GET /youtube_urls/new
  def new
    @youtube_url = YoutubeUrl.new
  end

  # GET /youtube_urls/1/edit
  def edit
	@youtube_url.url = 'https://www.youtube.com/embed/' + @youtube_url.url
  end

  # POST /youtube_urls
  # POST /youtube_urls.json
  def create
    @youtube_url = YoutubeUrl.new(youtube_url_params)
	#下位11桁の文字列を取得
    url = params[:youtube_url][:url]
    url = url.last(11)
    @youtube_url.url = url

    respond_to do |format|
      if @youtube_url.save
        format.html { redirect_to @youtube_url, notice: 'Youtube url was successfully created.' }
        format.json { render :show, status: :created, location: @youtube_url }
      else
        format.html { render :new }
        format.json { render json: @youtube_url.errors, status: :unprocessable_entity }
      end
    end
  end


  # POST /youtube_urls/1
  # POST /youtube_urls/1.json
  def update
	
	#下位11桁の文字列を取得
    url = params[:youtube_url][:url]
    url = url.last(11)
    params[:youtube_url][:url] = url
    
    respond_to do |format|
      if @youtube_url.update(youtube_url_params)
        format.html { redirect_to @youtube_url, notice: 'Youtube url was successfully updated.' }
        format.json { render :show, status: :ok, location: @youtube_url }
      else
        format.html { render :edit }
        format.json { render json: @youtube_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /youtube_urls/1
  # DELETE /youtube_urls/1.json
  def destroy
    @youtube_url.destroy
    respond_to do |format|
      format.html { redirect_to youtube_urls_url, notice: 'Youtube url was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_youtube_url
      @youtube_url = YoutubeUrl.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def youtube_url_params
      params.require(:youtube_url).permit(:name, :url)
    end
end
