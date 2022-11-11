class TenantsController < ApplicationController

   def index 
      render json: Tenant.all, status: :ok 
   end

   def show
      tenant = Tenant.find(params[:id])
      render json: tenant, status: :ok
   end

   def create 
      tenant = Tenant.create!(tenants_params)
      render json: tenant, status: :created
   end

   def update
      tenant = Tenant.find(params[:id])
      tenant.update!(tenants_params)
      render json: tenant, status: :accepted
   end

   def destroy
      tenant = Tenant.find(params[:id])
      tenant.destroy
   end

   private 

   def tenants_params
      params.permit(:id, :name, :age)
   end
end
