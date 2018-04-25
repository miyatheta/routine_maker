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
    @work=Work.find_by(id: params[:id])
    @work.title=params[:title]
    @work.detail=params[:detail]
    @work.save
    redirect_to("/works/index")
  end

  def destroy
    @work=Work.find_by(id: params[:id])
    @work.destroy
    redirect_to("/works/index")
  end
end
