class GuestsController < ApplicationController

 def index
   @guests = Guest.all
 end

 def show
   @guest = Guest.find(params[:id])
 end

 def new
   @guest = Guest.new
 end

 def create
   @guest = Guest.create(guest_params)
   redirect_to guests_path
 end

 def edit
   @guest = Guest.find(params[:id])
 end

 def update
   @guest = Guest.find(params[:id])
   @guest.update(guest_params)
   redirect_to guests_path
 end

 def destroy
   @guest = Guest.find(params[:id])
   @guest.destroy
   redirect_to guests_path
 end

 def guest_params
   params.require(:guest).permit(:username)
 end


end
