class MessagesController < ApplicationController
  def index
    if current_user.role == "Radiologist"
      @messages = Message.all
    else
      @messages = current_user.messages
    end
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new
    @message.user_id = params[:user_id]
    @message.site_id = params[:site_id]
    @message.header = params[:header]
    @message.body = params[:body]

    if @message.save
      redirect_to "/messages", :notice => "Message created successfully."
    else
      render 'new'
    end
  end

  def edit
    @message = Message.find(params[:id])
  end

  def update
    @message = Message.find(params[:id])

    @message.user_id = params[:user_id]
    @message.site_id = params[:site_id]
    @message.header = params[:header]
    @message.body = params[:body]

    if @message.save
      redirect_to "/messages", :notice => "Message updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @message = Message.find(params[:id])

    @message.destroy

    redirect_to "/messages", :notice => "Message deleted."
  end
end
