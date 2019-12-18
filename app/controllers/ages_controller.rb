class AgesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_relationship, except: [:index, :new, :create]

  def new
    @age = Age.new()
  end

  def create
    @age = Age.new(age_params)
    @age.user = current_user
    if @age.save
      redirect_to new_relationship_url
    else
      if @age.errors.full_messages.present?
        if @age.errors.full_messages.each_with_index do |msg,i|
          flash["alert"+i.to_s] = msg
        end
        end        
      end
      render :new
    end 
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
  end

  private
  def set_age
    @age = Age.find(params[:id])
  end
  def age_params
    params.require(:age).permit(:age)
  end
end
