class AssetsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @assets = Asset.all
    @users = User.all
  end

  def new
    @asset = Asset.new
  end

  def show
  end

  def create
      @asset = Asset.new(asset_params)
      if @asset.invalid?
      flash[:error] = "<strong>Could not save asset</strong>"
      redirect_to new_asset_path
    else
      if @asset.save
        @asset.save_images(params) # FOR-IMAGE-UPLOAD saves the images if asset saving is successful
        redirect_to root_path
      else
        redirect_to new_asset_path
      end
    end
    # FOR-IMAGE-UPLOAD
  end

  def update
    asset = Asset.find(params[:id])
    user_id = params[:asset][:user]
    if user_id != "-1"
      asset.user = User.find(user_id)
      asset.save()
    end

    redirect_to root_path
  end

  private

  def asset_params
    params.require(:asset).permit(:name, :description, images: [:path]) # FOR-IMAGE-UPLOAD
  end

end
