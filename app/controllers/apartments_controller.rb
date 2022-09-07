class ApartmentsController < ApplicationController

   def index
      render json: Apartment.all, status: :ok
   end

   def show
      apt = Apartment.find(params[:id])
      render json: apt, status: :ok
   end

   def create
      apt = Apartment.create!(apt_params)
      render json: apt, status: :created
   end

   def destroy
      apt = Apartment.find(params[:id])
      apt.destroy
      head :no_content
   end

   def update
      apt = Apartment.find(params[:id])
      apt.update!(apt_params)
      render json: apt, status: :accepted
   end

   private

   def apt_params
      params.permit(:number)
   end

end
