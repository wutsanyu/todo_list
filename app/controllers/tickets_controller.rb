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

  def edit 
    @ticket = Ticket.find_by(id: params[:id])
  end

  def update
    @ticket = Ticket.find_by(id: params[:id])

    if @ticket.update(ticket_params)
      redirect_to tickets_path, notice: "任務更新成功"
    else
      render :edit
    end
  end

  def destroy
    @ticket = Ticket.find_by(id: params[:id])
    @ticket.destroy if @ticket
    redirect_to tickets_path, notice: "任務已刪除"
  end


  private
  def ticket_params
    params.require(:ticket).permit(:ticket_title, :ticket_label, :ticket_status, :ticket_staring_time, :ticket_ending_time, :ticket_discription)
  end
end
