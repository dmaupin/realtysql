class PropsController < ApplicationController

	def index
		@props = Prop.all
	end

	def show
		@prop = Prop.find(params[:id])
	end

	def edit
		@prop = Prop.find(params[:id])
	end

	def update
		@prop = Prop.find(params[:id])

		if @prop.update_attributes(params.require(:prop).permit(:title, :price, :sqft, :description, :mls, :address, :beds, :baths, :image))
			redirect_to prop_path
		else
			render "edit"
		end		
	end

	def new
		@prop = Prop.new
	end

	def create
		@prop = Prop.new(params.require(:prop).permit(:title, :price, :sqft, :description, :mls, :address, :beds, :baths, :image))

		if @prop.save
			redirect_to props_path
		else
			render "new"
		end
	end

	def destroy
		@prop = Prop.find(params[:id])
		@prop.destroy
		redirect_to props_path
	end

end
