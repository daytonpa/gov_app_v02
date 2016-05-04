class GovOfficialsController < ApplicationController

	def index
		@gov_officials = GovOfficial.all
	end

	def show
		@gov_official = GovOfficial.find(params[:id])
	end

	def new
		@gov_official = GovOfficial.new
	end

	def create
		@gov_official.new(gov_params)
		if @gov_official.save
			redirect_to @gov_official, notice: "GovOfficial successfully created"
		else
			render :new
		end
	end

	def edit
		@gov_official = GovOfficial.find(params[:id])
	end

	def update
		@gov_official = GovOfficial.find(params[:id])
		@gov_official.update(gov_params)
		redirect_to @gov_official
	end

	def destroy
		@gov_official = GovOfficial.find(params[:id])
		@gov_official.destroy
		redirect_to gov_officials_path, alert: "GovOfficial successfully deleted"
	end

	private

	def gov_params
		params.require(:gov_official).permit(:name, :about, :state, :party, :branch, :elected)
	end

end
