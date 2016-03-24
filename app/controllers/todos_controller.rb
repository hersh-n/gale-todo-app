class TodosController < ApplicationController

  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
  end


  private
    def todo_params
      params.require(:todo).permit(:title, :description)
    end

end
