class PeopleController < ApplicationController
  before_action :authenticate_user!
  before_action :set_person, except: [:index, :new, :create]

  def new
    @person = Person.new()
  end

  def create
    @person = Person.new(person_params)
    @person.user = current_user
    if @person.save
      redirect_to new_state_url
    else
      if @person.errors.full_messages.present?
        if @person.errors.full_messages.each_with_index do |msg,i|
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
  def set_person
    @person = Person.find(params[:id])
  end
  def person_params
    params.require(:person).permit(:fullname)
  end
end
