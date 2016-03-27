class TodosController < ApplicationController
  skip_before_action :verify_authenticity_token


  def index
    @todos = Todo.all
    @completed_todos = Todo.where("status = 1").order('updated_at DESC')

  end

  def new
    @todo = Todo.new
    respond_to do |format|
      format.html { redirect_to new_todo_path }
      format.js {}
    end
  end

  def create
    @todo = Todo.create(todo_params)

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js {}
    end
  end

  def edit
    @todo = Todo.find(params[:id])

    respond_to do |format|
      format.html {}
      format.js {}
    end
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update todo_params

    respond_to do |format|
      format.html { redirect_to root_path}
      format.js {}
    end
  end


  def complete

    @todo = Todo.find(params[:id])
    @todo.mark_complete!
     respond_to do |format|
      format.html { redirect_to root_path, notice: "marked as complete" }
      format.js {}
    end
  end


  def destroy

    @todo = Todo.find(params[:id])
    @todo.destroy

    respond_to do |format|
      format.html {redirect_to root_path}
      format.js {}
    end


  end

  private
    def todo_params
      params.require(:todo).permit(:title, :description, :priority, :status)
    end

end
