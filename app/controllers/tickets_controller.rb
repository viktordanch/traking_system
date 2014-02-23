class TicketsController < ApplicationController
  def create
    author = User.where(params[:author]).first
    #author = User.where(name: params[:author][:name], email: params[:author][:email]).first
    puts '----------------------------------'
    puts params[:author]
    puts author.inspect
    @ticket = author.customer_tickets.new(ticket_params)
    if @ticket.save
      redirect_to ticket_path(@ticket)
    else
      render 'new'
    end
  end

  def update
  end

  def show
    @ticket = Ticket.find_by_id(params[:id])
  end


  def close
  end

  def new
    @ticket = Ticket.new
    puts '--------------------------------------'
    puts @ticket.author.inspect
    @ticket.author = User.new
  end

  private
  def ticket_params
    params.require(:ticket).permit(:subject, :body)
  end

end
