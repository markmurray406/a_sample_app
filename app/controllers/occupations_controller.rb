class OccupationsController < ApplicationController

  # add authetication of pins, see omrails, Add Associations . . . , 24:00
  before_filter :authenticate_user!, except: [:index]


  # GET /occupations
  # GET /occupations.json
  def index
    # To restrict so only views you occupations, see omrails, Add Associations . . ., 33:00
    @occupations = Occupation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @occupations }
    end
  end

  # GET /occupations/1
  # GET /occupations/1.json
  def show
    @occupation = Occupation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @occupation }
    end
  end

  # GET /occupations/new
  # GET /occupations/new.json
  def new
    # Adding user id to saved occupations, see omrails, Add Associations . . ., 26:00
    @occupation = current_user.occupations.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @occupation }
    end
  end

  # GET /occupations/1/edit
  def edit
    # Adding user id to saved occupations, see omrails, Add Associations . . ., 28:00
    @occupation = current_user.occupations.find(params[:id])
  end

  # POST /occupations
  # POST /occupations.json
  def create
    # Adding user id to saved occupations, see omrails, Add Associations . . ., 26:00
    @occupation = current_user.occupations.new(params[:occupation])

    respond_to do |format|
      if @occupation.save
        format.html { redirect_to @occupation, notice: 'Occupation was successfully created.' }
        format.json { render json: @occupation, status: :created, location: @occupation }
      else
        format.html { render action: "new" }
        format.json { render json: @occupation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /occupations/1
  # PUT /occupations/1.json
  def update
    @occupation = current_user.occupations.find(params[:id])

    respond_to do |format|
      if @occupation.update_attributes(params[:occupation])
        format.html { redirect_to @occupation, notice: 'Occupation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @occupation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /occupations/1
  # DELETE /occupations/1.json
  def destroy
    @occupation = current_user.occupations.find(params[:id])
    @occupation.destroy

    respond_to do |format|
      format.html { redirect_to occupations_url }
      format.json { head :no_content }
    end
  end
end
