class ReadersController < ApplicationController

  def new
    @reader = Reader.new
  end

  def create
    reader = Reader.new(reader_params)
    reader.save
    redirect_to root_url, notice: "Your punkass registered"
  end


  private 

  def reader_params
    params[:reader].permit(:email, :password, :password_confirmation)
  end
end
