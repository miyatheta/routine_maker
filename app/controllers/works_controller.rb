class WorksController < ApplicationController
  def index
    @work=Work.all
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

  def edit
    @work=Work.find_by(id: params[:id])
  end

  def update
    redirect_to("works/index")
  end
end
