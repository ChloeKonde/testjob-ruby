class Api::V1::ProjectsController < ApplicationController
    protect_from_forgery except: [:create]

    #GET /api/v1/index  returns projects with todos for each 
    def index
        data = Project.joins(:todos).select('projects.id, projects.title, json_object_agg(todos.text, todos."isCompleted") AS todos').group('projects.id')
        render json: {status: 'SUCCESS', message:'Loaded projects', data:data}, status: :ok
    end
       
    #post /api/v1/project creates project
    def create
        project = Project.new(project_params)
        if project.save
            render json: {status: 'SUCCESS', message:'Saved project', data:project}, status: :ok
        else
            render json: {status: 'ERROR', message:'Project not saved', data:project.errors}, status: :unprocessable_entity
        end
    end

    private

    def project_params
        params.permit(:title)    
    end
end