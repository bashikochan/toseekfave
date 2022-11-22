class CollectionsController < ApplicationController

  def index
    @collections = Collection.all
  end

  def new
    @collection = Collection.new
  end

  def create
    @collection = Collection.new(collection_params)
    if @collection.save
      redirect_to root_path    
    else
      render :new
    end
  end

  def show
    @collection = Collection.find(params[:id])
    @user = @collection.user
  end

  private

  def collection_params
    params.require(:collection).permit(:image, :favemember_id, :album_id, :version_id, :others).merge(user_id: current_user.id)
  end
end
