class CirclesController < ApplicationController
  before_action :set_circle, only: [:show, :edit, :update, :destroy]

  # GET /circles
  # GET /circles.json
  def index
    search_word = SearchForm.new(circle_params)
    if search_word.valid?
      @circles = Circle.search(search_word.serializable_hash)
      puts "circle is #{@circles}"
      @circles
    else
      render json: search_word.errors, status: :unprocessable_entity 
    end
      
  end

  # POST /circles/ids
  def index_ids
    ids = params[:ids]
    @circles = Circle.find(ids)
    @circles
  end

  # GET /circles/1
  # GET /circles/1.json
  def show
  end

  # GET /circles/new
  def new
    @circle = Circle.new
  end

  # GET /circles/1/edit
  def edit
  end

  # POST /circles
  # POST /circles.json
  def create
    @circle = Circle.new(post_params)

    if @circle.save
        render :show, status: :created, location: @circle 
    else
        render json: @circle.errors, status: :unprocessable_entity 
    end
  end

  # PATCH/PUT /circles/1
  # PATCH/PUT /circles/1.json
  def update
      if @circle.update(post_params)
          render :show, status: :ok, location: @circle 
      else
          render json: @circle.errors, status: :unprocessable_entity 
      end
  end

  # DELETE /circles/1
  # DELETE /circles/1.json
  def destroy
    @circle.destroy
        head :no_content 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_circle
      @circle = Circle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def circle_params
      params.permit({genre: []}, :fee, :order, :min, :max, :frequency, :days, :location)
    end

    def post_params
      params.require(:circle).permit(:name, :title, :description, :members, :link, :days, :frequency, :location)
    end
end
