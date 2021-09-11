class LocationsController < ApplicationController
  # before_action :set_sub
def index
  @locations = @user.location
  render component: 'Locations', props: { user: @user, locations: @locations }
end

def show
  @location = @user.locations.find(params[:id])
  render component: 'Location', props: { user: @user, locations: @location }
end

def new
  @location = @user.locations.new
  render component: 'LocationNew', props: { user: @user, location: @location }
end

def create
  @location = @user.locations.new(location_params)
  if @location.save 
    redirect_to user_locations_path
    # redirect_to subs_topic_path(@sub, @topic)
    # redirect_to subs_topics_path(@sub)
  else 
    render component: 'LocationNew', props: { user: @user, location: @location }
  end
end

def edit
  @location = @user.locations.find(params[:id])
  render component: 'LocationEdit', props: { user: @user, location: @location }
end

def update
  @location = @user.location.find(params[:id])
  if @location.update(location_params) 
    redirect_to user_locations_path
  else 
    render component: 'LocationEdit', props: { user: @user, location: @location }
  end
end

def destroy
  @user.location.find(params[:id]).destroy
  redirect_to user_locations_path
end

private 
  def set_location
    @user = User.find(params[:user_id])
  end
end
