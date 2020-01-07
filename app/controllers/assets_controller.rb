class AssetsController < ApplicationController

  def index
    @assets = Asset.all
  end

  def new
    @asset = Asset.new
  end

  def create
    Asset.create(asset_params)
    redirect_to root_path
  end

  private

  def asset_params
    params.require(:asset).permit(:name, :description)
  end

end
