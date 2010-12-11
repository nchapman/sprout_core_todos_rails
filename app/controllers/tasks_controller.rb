class TasksController < ApplicationController
  respond_to :json
      
   def index
     respond_with(Task.all)
   end
  
   def show
     respond_with(Task.find(params[:id]))
   end

   def create
     respond_with(Task.create_with_valid_attributes(params))
   end

   def update
     @task = Task.find(params[:id])
     @task.update_valid_attributes(params)
     
     respond_with(@task)
   end

   def destroy
     @task = Task.find(params[:id])
     @task.destroy
     
     render(:nothing => true, :status => :ok)
   end
end
