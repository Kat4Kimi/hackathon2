class Trip1sController < ApplicationController
  before_action :set_user
def index
	@trip1s = @user.trip1s
	render component: 'Trip1s', props: { user: @user, trip1s: @trip1s }
end

def show
	@trip1 = @user.trip1.find(params[:id])
	render component: 'Trip1', props: { user: @user, trip1: @trip1 }
end

def new
	@trip1 = @user.trip1s.new
	render component: 'Trip1New', props: { user: @user, trip1: @trip1 }
end

def create
	@trip1 = @user.trip1s.new(trip1_params)
	if @trip1.save
		redirect_to user_trip1_path
	else
		render component: 'Trip1New', props: { user: @user, trip1: @trip1 }
	end
end

def edit
	@trip1 = @user.trip1s.find(params[:id])
	render component: 'Trip1Edit', props: { user: @user, trip1: @trip1 }
end

def update
	@trip1 = @user.trip1s.find(params[:id])
	if @trip1.update(trip1_params)
		redirect_to user_trip1_path
	else
		render component: 'Trip1Edit', props: { user: @user, trip1: @trip1 }
	end
end

def destroy
	@user.trip1s.find(params[:id]).destroy
	redirect_to user_trip1_path
end

private
	def set_user
		@user = User.find(params[:user_id])
	end
end



