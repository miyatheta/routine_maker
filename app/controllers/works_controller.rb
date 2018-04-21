class WorksController < ApplicationController
  def index
    @works=Work.all
  end

  def new
  end

  def create
    @work=Work.new(title: params[:title], detail: params[:detail])
    @work.save
    redirect_to("/works/index")
  end

  def show
    @work=Work.find_by(id: params[:id])
  end
end
