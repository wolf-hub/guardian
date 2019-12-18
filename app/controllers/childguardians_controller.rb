class ChildguardiansController < ApplicationController
  before_action :set_childguardian, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:new, :create] 

  def new    
    @childguardian = Childguardian.new
  end

  def create
    @childguardian = Childguardian.new(childguardian_params)
      @childguardian.user = current_user
      if @childguardian.save        
        redirect_to children_url        
      else
        flash[:alert] = "Something went wrong..."
        render :new
      end
  end

  def new
  end

  def create
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
  def childguardian_params
      params.require(:childguardian).permit(:gaurdian_name,:guardian_order, :another_guardian)
  end

  def set_childguardian
    @childguardian = Childguardian.find(params[:id])
  end
end
