class Api::ActivitiesController < ApplicationController
		 before_action :set_pet
		
		def index
			render json: @pet.activities
		end
		
		def show 
			@activity = @pet.activities.find(params[:id])
			render json: @activity
		end
	
		def create 
			@activity = @pet.activities.new(activity_params)
			if @activity.save
				render json: @activity
			else
				render json: { errors: @activity.errors }, status: :unprocessable_entity
			end
		end
	
		def update
			@activity = @pet.activities.find(params[:id])
			if @activity.update(activity_params)
				render json: @activity
			else
				render json: { errors: @activity.errors }, status: :unprocessable_entity
			end
		end
	
		def destroy
		 @pet.activities.find(params[:id]).destroy
			render json: { message: 'Activity Deleted' }
		end
		private 
			# { todo: {title: "", complete: false}}
			def activity_params
				params.require(:activity).permit(:food, :exerise, :potty, :other)
			end
	
		def set_pet
			@pet = Pet.find(params[:pet_id])
		end
	
	end
	
