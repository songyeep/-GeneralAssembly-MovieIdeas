class MovieIdeasController < ApplicationController
  before_action :set_movie_idea, only: [:show, :edit, :update, :destroy]

  # GET /movie_ideas
  # GET /movie_ideas.json
  def index
    @movie_ideas = MovieIdea.all
  end

  def like
    @movie = MovieIdea.find params[:id]
    @movie.liked_by current_user

    redirect_to '/'
    flash[:info] = "Yay, you like this idea!"
  end

  def dislike
    @movie = MovieIdea.find params[:id]
    @movie.downvote_from current_user

    redirect_to '/'
    flash[:info] = "Nay, you hate this idea!"
  end

  # GET /movie_ideas/1
  # GET /movie_ideas/1.json
  def show

  end

  # GET /movie_ideas/new
  def new
    @movie_idea = MovieIdea.new
  end

  # GET /movie_ideas/1/edit
  def edit
  end

  # POST /movie_ideas
  # POST /movie_ideas.json
  def create
    @movie_idea = MovieIdea.new(movie_idea_params)

    respond_to do |format|
      if @movie_idea.save
        format.html { redirect_to @movie_idea, notice: 'Movie idea was successfully created.' }
        format.json { render :show, status: :created, location: @movie_idea }
      else
        format.html { render :new }
        format.json { render json: @movie_idea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movie_ideas/1
  # PATCH/PUT /movie_ideas/1.json
  def update
    respond_to do |format|
      if @movie_idea.update(movie_idea_params)
        format.html { redirect_to @movie_idea, notice: 'Movie idea was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie_idea }
      else
        format.html { render :edit }
        format.json { render json: @movie_idea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_ideas/1
  # DELETE /movie_ideas/1.json
  def destroy
    @movie_idea.destroy
    respond_to do |format|
      format.html { redirect_to movie_ideas_url, notice: 'Movie idea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_idea
      @movie_idea = MovieIdea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_idea_params
      params.require(:movie_idea).permit(:synopsis, :more_info)
    end
end
