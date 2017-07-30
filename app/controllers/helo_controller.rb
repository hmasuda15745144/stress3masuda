class HeloController < ApplicationController
	layout 'application'
	before_action :authenticate_account!, only: :login_check
#	before_action :authenticate_account!

	def index
		@msg = 'this is sample page.'
		@data = Helo.all
	end
	
	def login_check
		@account = current_account
		@msg = 'you logined at: ' + @account.current_sign_in_at.to_s
	end

  def add
    @msg = "add new data."
    @helo = helo.new
  end

  def create
    @helo = Helo.new comment_params
    if @helo.save then 
          redirect_to '/helo'
          return
    end
       render 'add'
  end

  def edit
    @msg = "edit data.[id = " + params[:id] + "]"
    @helo = Helo.find(params[:id])
#    if request.patch? then 
#       @helo.update(helo_params)
#     goback
#    end
  end

  def dell
    		@msg = 'this is sample page dell.'
   obj = helo.find(helo[:id])
   obj.update(helo_params)
   redirect_to '/helos'
  end
 

  def list
    		@msg = 'this is sample page list.'
    		@data = Helo.all
###    @helo = Helo.find(params[:id])
###    @data = Helo.find(params[:id])
  end

private
def helo_params
   params.require(:helo).permit(:account_id, :kubun, :word )
end

def goback
  redirect_to '/helo/index'
end

end