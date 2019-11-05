class KanbansController < ApplicationController
  def index
    @kanbans = Kanban.all    
  end

  def new
    @kanban = Kanban.new
  end
  
  def create
    @kanbans = Kanban.new(kanban_params)
    if @kanban.save
      redirect_to kanbans_path, notice: "新增看板成功！"
    else
      render :new
    end
  end

  def edit
    @kanbans = Kanban.find_by(id: params[:id])
  end

  def update
    @kanban = Kanban.find_by(id: params[:id])

    if @kanban.update(kanban_params)
      redirect_to kanbans_path, notice: "看板更新成功"
    else
      render :edit
    end
  end

  def destroy
    @kanban = Kanban.find_by(id: params[:id])
    @kanbans.destroy if @kanban
    redirect_to kanbans_path, notice: "看板已刪除"
  end

  private
  def kanban_params
    params.require(:kanban).permit(:kanban_name, :kanban_status)
  end
end
