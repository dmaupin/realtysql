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
		if @prop.update_attributes(prop_params)
			redirect_to prop_path
		else
			render "edit"
		end		
	end

	def new
		@prop = Prop.new
		@pic = @prop.pics.build
	end

	def create
		@prop = Prop.new(prop_params)

		# respond_to do |format|
			if @prop.save
				params[:pics]['item'].each do |a|
					@pics = @prop.pics.create!(:item => a, :prop_id => @prop.id)
				end
				redirect_to props_path
			else
				render "new"
			end
		# end
	end

	def destroy
		@prop = Prop.find(params[:id])
		@prop.destroy
		redirect_to props_path
	end

	private

	def prop_params
		params.require(:prop).permit(:title, :price, :sqft, :description, :mls, :street, :city, :beds, :baths, :image, pics_attributes: [:id, :_destroy, :item])
	end

end
