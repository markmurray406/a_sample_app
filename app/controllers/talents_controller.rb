class TalentsController < ApplicationController
	before_filter :load_talented

  def index
  	@talents = @talented.talents
  end

  def new
    @talent = @talented.talents.new
  end

  def create
    @talent = @talented.talents.new(params[:talent])
    if @talent.save
      redirect_to @talented, notice: "Talent created."
    else
      render :new
    end
  end

private

  def load_talented
    resource, id = request.path.split('/')[1, 2]
    @talented = resource.singularize.classify.constantize.find(id)
  end

end
