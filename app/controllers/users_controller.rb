class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])

    # Create instance varibles for talents
    @occupation = @user
    @occupation = Occupation.new 
    @occupations = @user.occupations

    @skill = @user
    @skill = Skill.new 
    @skills = @user.skills
  end
end