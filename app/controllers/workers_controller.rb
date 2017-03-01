class WorkersController < ApplicationController
  def show
    @worker = Worker.find(params[:id])
    render :show
  end

  def new
    # current_worker refers to a worker account currently logged in. current_user refers to a user account currently logged in.
    if current_worker
      redirect_to worker_path(current_worker)
      flash[:notice] = "You're already logged into a worker account!"
    elsif current_user
      # need to make sure users signing up to be workers are signed out of their user account first. -Mr. Fix-It
      sign_out :user
      redirect_to new_worker_registration_path
    else
      redirect_to new_worker_registration_path
    end
  end

  def update_active
    @worker = Worker.find(params[:worker_id])
    @job = Job.find(params[:job_id])
    if @job.update(active: true)
      respond_to do |format|
        format.html { redirect_to worker_path(current_worker) }
        format.js
      end
    end
  end
end
