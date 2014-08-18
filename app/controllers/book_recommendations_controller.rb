class BookRecommendationsController < ApplicationController
  before_action :set_book_recommendation, only: [:show, :edit, :update, :destroy]

  # GET /book_recommendations
  # GET /book_recommendations.json
  def index
    @book_recommendations = BookRecommendation.all
  end

  # GET /book_recommendations/1
  # GET /book_recommendations/1.json
  def show
  end

  # GET /book_recommendations/new
  def new
    @book_recommendation = BookRecommendation.new
  end

  # GET /book_recommendations/1/edit
  def edit
  end

  # POST /book_recommendations
  # POST /book_recommendations.json
  def create
    @book_recommendation = BookRecommendation.new(book_recommendation_params)

    respond_to do |format|
      if @book_recommendation.save
        format.html { redirect_to @book_recommendation, notice: 'Book recommendation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @book_recommendation }
      else
        format.html { render action: 'new' }
        format.json { render json: @book_recommendation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_recommendations/1
  # PATCH/PUT /book_recommendations/1.json
  def update
    respond_to do |format|
      if @book_recommendation.update(book_recommendation_params)
        format.html { redirect_to @book_recommendation, notice: 'Book recommendation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @book_recommendation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_recommendations/1
  # DELETE /book_recommendations/1.json
  def destroy
    @book_recommendation.destroy
    respond_to do |format|
      format.html { redirect_to book_recommendations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_recommendation
      @book_recommendation = BookRecommendation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_recommendation_params
      params.require(:book_recommendation).permit(:user_id, :book_id, :blurb)
    end
end
