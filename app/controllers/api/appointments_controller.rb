class Api::AppointmentsController < ApplicationController
		before_action :set_activity
		
		def index
			render json: @activity.appointments
		end
		
		def show 
			@appointment = @activity.appointments.find(params[:id])
			render json: @appointment
		end
	
		def create 
			@appointment = @activity.appointments.new(appointment_params)
			if @appointment.save
				render json: @appointment
			else
				render json: { errors: @appointment.errors }, status: :unprocessable_entity
			end
		end
	
		def update
			@appointment = @activity.appointments.find(params[:id])
			if @appointment.update(appointment_params)
				render json: @appointment
			else
				render json: { errors: @appointment.errors }, status: :unprocessable_entity
			end
		end
	
		def destroy
		 @activity.appointments.find(params[:id]).destroy
			render json: { message: 'Appointment Deleted' }
		end
		private 
			# { todo: {title: "", complete: false}}
			def appointment_params
				params.require(:appointment).permit(:vet, :groomer, :training)
			end
	
		def set_activity
			@activity = Activity.find(params[:activity_id])
		end
	
	end
	
