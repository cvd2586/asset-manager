class AssetsController < ApplicationController

  def index
    @assets = Asset.all
  end

  def new
    @asset = Asset.new
  end

  def create
    @asset = Asset.create(asset_params)
    if @asset.invalid?
      flash[:error] = "<strong>Could not save asset</strong>"
      redirect_to new_asset_path
    else
      redirect_to root_path
    end
  end

  private

  def asset_params
    params.require(:asset).permit(:name, :description)
  end

end
