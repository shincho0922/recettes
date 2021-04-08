class TweetsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :show, :edit, :update]
  before_action :choose_tweet, only:[:show, :edit, :update, :destroy]

  def index
    @tweets = Tweet.includes(:user).order("created_at DESC")
  end
  
  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @tweet.update(tweet_params)
      redirect_to action: :index
    else
      render :edit
    end
  end

  def destroy
    @tweet.destroy
    redirect_to root_path
  end

  def search
    @tweets = Tweet.search(params[:keyword])
  end


  private
  def tweet_params
    params.require(:tweet).permit(:image, :name, :ingredient, :make, :genre_id).merge(user_id: current_user.id)
  end

  def choose_tweet
    @tweet = Tweet.find(params[:id])
  end

end
