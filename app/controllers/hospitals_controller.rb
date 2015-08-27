class HospitalsController < ApplicationController
  def index
    @hospitals = Hospital.all
  end

  def show
    @hospital = Hospital.find(params[:id])
  end

  def new
    @hospital = Hospital.new
  end

  def create
    @hospital = Hospital.new
    @hospital.name = params[:name]

    if @hospital.save
      redirect_to "/hospitals", :notice => "Hospital created successfully."
    else
      render 'new'
    end
  end

  def edit
    @hospital = Hospital.find(params[:id])
  end

  def update
    @hospital = Hospital.find(params[:id])

    @hospital.name = params[:name]

    if @hospital.save
      redirect_to "/hospitals", :notice => "Hospital updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @hospital = Hospital.find(params[:id])

    @hospital.destroy

    redirect_to "/hospitals", :notice => "Hospital deleted."
  end
end
