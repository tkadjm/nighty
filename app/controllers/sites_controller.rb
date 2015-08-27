class SitesController < ApplicationController
  def index
    @sites = Site.all
  end

  def show
    @site = Site.find(params[:id])
  end

  def new
    @site = Site.new
  end

  def create
    @site = Site.new
    @site.hospital_id = params[:hospital_id]
    @site.phone = params[:phone]
    @site.name = params[:name]

    if @site.save
      redirect_to "/sites", :notice => "Site created successfully."
    else
      render 'new'
    end
  end

  def edit
    @site = Site.find(params[:id])
  end

  def update
    @site = Site.find(params[:id])

    @site.hospital_id = params[:hospital_id]
    @site.phone = params[:phone]
    @site.name = params[:name]

    if @site.save
      redirect_to "/sites", :notice => "Site updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @site = Site.find(params[:id])

    @site.destroy

    redirect_to "/sites", :notice => "Site deleted."
  end
end
