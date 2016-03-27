class Api::TodosController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    render json: Todo.all
  end

  def show
    todo = Todo.find(params[:id])
    render json: todo
  end

  def create
    todo = Todo.new(todo_params)
    if todo.save
      render status: 200, json: {
        message: "Successfully created Todo.",
        todo: todo
      }.to_json
    else
      render status: 422, json: {
        message: "Todo creation failed.",
        errors: item.errors

      }.to_json
    end
  end

  def update
    todo = Todo.find(params[:id])
    if todo.update(todo_params)
      render status: 200, json: {
        message: "Successfully Updated Todo.",
        todo: todo
      }.to_json
    else
      render status: 422, json: {
        message: "Todo Update Failed.",
        errors: todo.errors
      }.to_json
    end

  end

  def destroy
    todo = Todo.find(params[:id])
    todo.destroy
    render status: 200, json: {
      message: "Todo Successfully Deleted.",
      todo: todo
    }.to_json
  end


  private

    def todo_params
      params.require(:todo).permit(:title, :description, :priority, :status)
    end


end