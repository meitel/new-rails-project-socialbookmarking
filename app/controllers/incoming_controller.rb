class IncomingController < ApplicationController

  # http://stackoverflow.com/questions/1177863/how-do-i-ignore-the-authenticity-token-for-specific-actions-in-rails
  skip_before_action :verify_authenticity_token, only: [:create]
  skip_before_action :authenticate_user!, only: [:create]

  def create
    # Find the user by using params[:sender]
    @user = User.find_by(email: params[:sender])
    # Check if user is nil, if so, create and save a new user
    if @user.nil?
      @user = User.new(email: params[:sender], password: "temp0rary_passw0rd")
      @user.save!
    end
  
    # Find the topic by using params[:subject]
    @topic = Topic.find_by(title: params[:subject])    
    # Check if the topic is nil, if so, create and save a new topic
    if @topic.nil?
      @topic = @user.topics.create(title: params[:subject])
    end
  
    # Assign the url to a variable after retreiving it from params["body-plain"]
    @url = params["body-plain"]
    @bookmark = @user.bookmarks.create(url: @url, topic_id: @topic.id)
    # Now that you're sure you have a valid user and topic, build and save a new bookmark
    head 200
  end
end