class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find_by({ :id => params[:id] })
    # @photo_url = p.source
    # @photo_caption = p.caption
    # @photo_id= p.id
  end

  def edit
  @photo = Photo.find_by({ :id => params[:id] })

  end

  def new_form

  end

  def create_row
  p = Photo.new
  p.caption = params[:caption]
  p.source = params[:url]
  p.save

  redirect_to("/photos")
  end

end
