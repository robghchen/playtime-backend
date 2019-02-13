class Api::V1::TasksController < ApplicationController

  skip_before_action :authorized, only: [:index]
  before_action :find_task, only: [:update, :destroy]

  def index
    @tasks = Task.all
    render json: @tasks
  end

  def create
    @task = Task.create(user_id: params[:user_id], post_count: params[:post_count], post_max: params[:post_max], comment_count: params[:comment_count], comment_max: params[:comment_max])
    render json: @task, status: :accepted
  end

  def update
    @task.update(task_params)
    if @task.save
      render json: @task, status: :accepted
    else
      render json: { errors: @task.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @task.destroy
    render json: { message: “removed” }, status: :ok
  end

  private

  def task_params
    params.require(:task).permit(:user_id, :post_count, :post_max, :comment_count, :comment_max)
  end

  def find_task
    @task = Task.find(params[:id]) 
  end

end
