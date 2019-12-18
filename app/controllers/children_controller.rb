class ChildrenController < ApplicationController
  before_action :set_child, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:new, :create] 

  def new
    @child = current_user.children.build
  end

  def create
    @child = current_user.children.build(child_params)
      if @child.save        
        if @child.create_another=='add'
          redirect_to new_child_url
        else
          redirect_to children_url
        end        
      else
        flash[:alert] = "Something went wrong..."
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
    @children = current_user.children
  end

  def show
  end

  private
  def child_params
      params.require(:child).permit(:child_name,:child_age, :child_parents, :create_another)
  end

  def set_child
    @child = Child.find(params[:id])
  end
end
