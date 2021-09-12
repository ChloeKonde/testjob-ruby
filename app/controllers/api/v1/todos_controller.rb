class Api::V1::TodosController < ApplicationController
    protect_from_forgery except: [:create]

    #POST api/v1/todos creates a todo for the project
    def create
        todo = Todo.new(todo_params)
        if todo.save
            render json: {status: 'SUCCESS', message:'Saved todo', data:todo}, status: :ok
        else
            render json: {status: 'ERROR', message:'Todo not saved', data:todo.errors}, status: :unprocessable_entity
        end
    end

    #patch api/v1/project/:id/todos/:id
    def update
        todo = Todo.find(params[:id])
        
        if todo.update(todo_params)
            render json: {status: 'SUCCESS', message:'Updated todo', data: todo}, status: :ok
        else
            render json: {status: 'ERROR', message:'Todo not updated', data:todo.errors}, status: :unprocessable_entity
        end
    end

    private

    def todo_params
        params.permit(:text, :isCompleted, :project_id)
    end
end