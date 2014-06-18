class RedactorAssetsController < ApplicationController
	def index
		@redactorAssets = Array.new

		RedactorAsset.all.each_with_index do | redactorAssets, i |
			@redactorAssets[i] = { :image => redactorAssets.asset.url(:original), :thumb => redactorAssets.asset.url(:thumb) }
		end

	    render :json => @redactorAssets.to_json
	end

	def create
		@redactorAsset = RedactorAsset.new
	 	@redactorAsset.asset = params[:file]

	 	if @redactorAsset.asset
	 		@redactorAsset.save
	 	end

		render :text => { :filelink => @redactorAsset.asset.url }.to_json
	end
end
