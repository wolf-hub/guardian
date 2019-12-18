class RelationshipsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_relationship, except: [:index, :new, :create]

  def new
    @relationship = Relationship.new()
  end

  def create
    @relationship = Relationship.new(relationship_params)
    @relationship.user = current_user
    if @relationship.save
      if (@relationship.status=="Married" || @relationship.status=="Civil Union")
        redirect_to new_spouse_url
      else
        redirect_to new_child_url
      end
      
    else
      if @relationship.errors.full_messages.present?
        if @relationship.errors.full_messages.each_with_index do |msg,i|
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
  def set_relationship
    @relationship = Relationship.find(params[:id])
  end
  def relationship_params
    params.require(:relationship).permit(:status)
  end
end
