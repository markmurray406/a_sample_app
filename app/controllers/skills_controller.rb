class SkillsController < ApplicationController
  before_filter :authenticate_user!, except: [:index]
  # GET /skills
  # GET /skills.json
  def index
    @skills = Skill.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @skills }
    end
  end

  # GET /skills/1
  # GET /skills/1.json
  def show
    @skill = Skill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @skill }
    end
  end

  # GET /skills/new
  # GET /skills/new.json

  def new
    #@skill = current_user.skills.new
    #@skill = Skill.new(params[:skill])

    @occupation = Occupation.find(params[:occupation])
    @skill = @occupation.skills.build(params[:skill])
    @skill.user = User.find(current_user.id)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @skill }
    end
  end

  # GET /skills/1/edit
  def edit
    @skill = current_user.skills.find(params[:id])
  end

  # POST /skills
  # POST /skills.json
  def create
    #@skill = current_user.skills.new(params[:skill]) 

    # Setting the skills in the occupation show page.
      #Rails.logger.level = 0
      #Rails.logger.fatal "Logger Message"
      #Rails.logger.fatal params[:occupation]
      @occupation = Occupation.find_by_id(params[:occupation])
      Rails.logger.info("PARAMS: #{params.inspect}")
      #Rails.logger.fatal @occupation

      #@occupation = Occupation.find(10)
      #@occupation = Occupation.find(10)
      #u = User.find(current_user.id)
      #s = u.occupations.first
      #@occupation = Occupation.find(s)
      #@skill = @occupation.skills.new(params[:skill])
      @skill = @occupation.skills.build(params[:skill])
      #@skill = @occupation.(Skills.all).build(params[:skill])
      @skill.user = User.find(current_user.id)
    # setting the skills in the occupation show page.  

      respond_to do |format|
        if @skill.save
          format.html { redirect_to @skill, notice: 'Skill was successfully created.' }
          format.json { render json: @skill, status: :created, location: @skill }
        else
          format.html { render action: "new" }
          format.json { render json: @skill.errors, status: :unprocessable_entity }
       end
      end 
  end

  # PUT /skills/1
  # PUT /skills/1.json
  def update
    @skill = current_user.skills.find(params[:id])

    respond_to do |format|
      if @skill.update_attributes(params[:skill])
        format.html { redirect_to @skill, notice: 'Skill was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skills/1
  # DELETE /skills/1.json
  def destroy
    @skill = current_user.skills.find(params[:id])
    @skill.destroy

    respond_to do |format|
      format.html { redirect_to skills_url }
      format.json { head :no_content }
    end
  end
end
