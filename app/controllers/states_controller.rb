class StatesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_state, except: [:index, :new, :create]

  def new
    @state = State.new()
  end

  def create
    @state = State.new(state_params)
    @state.user = current_user
    if @state.save
      redirect_to new_age_url
    else
      if @pstate.errors.full_messages.present?
        if @state.errors.full_messages.each_with_index do |msg,i|
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
  def set_state
    @state = State.find(params[:id])
  end
  def state_params
    params.require(:state).permit(:state)
  end
end
