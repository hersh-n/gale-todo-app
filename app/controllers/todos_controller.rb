class TodosController < ApplicationController

  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.create todo_params
     redirect_to action: 'index'
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update todo_params
    redirect_to action: 'index'
  end

  def destroy

    Todo.find(params[:id]).destroy
    redirect_to root_path

  end

  private
    def todo_params
      params.require(:todo).permit(:title, :description, :priority, :status)
    end

end
