class TopicsController < ApplicationController
  
  def index
    @topics = Topic.all  
  end

  def show
    @topic = Topic.find(params[:id])
  end

  def new
    @topic = Topic.new
  end

  def edit
    @topic = Topic.find(params[:id])
  end
  
  def create
    @topic = Topic.new(params.require(:topic).permit(:title))
    if @topic.save
      flash[:notice] = "Your topic was saved."
      redirect_to topics_path
    else
      flash[:error] = "There was an error saving your topic! Please try again."
      render :new
    end
  end

    def update
    @topic = Topic.find(params[:id])
    if @topic.update_attributes(params.require(:topic).permit(:title))
      flash[:notice] = "Topic was updated."
      redirect_to topics_path
    else
      flash[:error] = "There was an error saving the topic. Please try again."
      render :edit
    end
  end

  def destroy
    @topic = Topic.find(params[:id])
    if @topic.destroy
      flash[:notice] = "Topic was deleted successfully."
      redirect_to topics_path
    else
      flash[:error] = "There was an error deleting the topic."
      render :show
    end
  end
  
end
