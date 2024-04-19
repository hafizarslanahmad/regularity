class TasksController < ApplicationController

  before_action :authenticate_user!

  def new
     @task = Task.new
     @users= User.all
  end

  def index 
    if current_user.admin?
      @tasks = Task.all 
    else
      @tasks = current_user.tasks
    end
  end

  def show 
    @task = Task.find(params[:id])
  end 

  def create
    if current_user.admin?
      @task = Task.new(task_params)
      @task.user_id = params[:task][:user_id]
      if @task.save 
        redirect_to root_path
      end
    end
  end

  def edit 
    @task = Task.find(params[:id])
  end

  def destroy
    if current_user.admin?
      @task = Task.find(params[:id])
      @task.destroy 
      redirect_to tasks_path, notice: "Delete succesfully"
    end
  end

  private 

  def task_params
    params.require(:task).permit(:assignment, :user_id, :email)
  end
end
