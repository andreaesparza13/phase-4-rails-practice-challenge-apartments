class ApartmentsController < ApplicationController

   def index 
      render json: Apartment.all, status: :ok 
   end

   def show
      apartment = Apartment.find(params[:id])
      render json: apartment, status: :ok
   end

   def create 
      apartment = Apartment.create!(apartments_params)
      render json: apartment, status: :created
   end

   def update
      apartment = Apartment.find(params[:id])
      apartment.update!(apartments_params)
      render json: apartment, status: :accepted
   end

   def destroy
      apartment = Apartment.find(params[:id])
      apartment.destroy
   end

   private 

   def apartments_params
      params.permit(:id, :number)
   end
end
