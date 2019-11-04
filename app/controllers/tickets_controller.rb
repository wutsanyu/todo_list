class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @tickets = Ticket.new(ticket_params)
    if @ticket.save
      redirect_to tickets_path, notice: "新增任務成功！"
    else
      render :new
    end
  end


  private
  def ticket_params
    params.require(:ticket).permit(:ticket_name, :ticket_label, :ticket_status, :ticket_staring_time, :ticket_ending_time, :ticket_discription)
  end
end
