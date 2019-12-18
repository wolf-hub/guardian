class SpousesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_person, except: [:index, :new, :create]

  def new
    @spouse = Spouse.new()
  end

  def create
    @spouse = Spouse.new(spouse_params)
    @spouse.user = current_user
    if @spouse.save
      redirect_to new_child_url
    else
      if @spouse.errors.full_messages.present?
        if @spouse.errors.full_messages.each_with_index do |msg,i|
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
  def set_spouse
    @spouse = Spouse.find(params[:id])
  end
  def spouse_params
    params.require(:spouse).permit(:spouse_name, :spouse_age)
  end
end
