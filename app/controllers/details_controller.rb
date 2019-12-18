class DetailsController < ApplicationController
 before_action :authenticate_user!, except: [:new, :create]
 def index
 	@person = current_user.person
 	@state = current_user.state
 	@age = current_user.age
 	@relationship = current_user.relationship
 	@spouse = current_user.spouse
 	@children = current_user.children
 end
end
