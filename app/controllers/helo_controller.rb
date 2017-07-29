class HeloController < ApplicationController
	layout 'application'
	before_action :authenticate_account!, only: :login_check

	def index
		@msg = 'this is sample page.'
	end
	
	def login_check
		@account = current_account
		@msg = 'you logined at: ' + @account.current_sign_in_at.to_s
	end

  def add
    		@msg = 'this is sample page add.'
  end

  def edit
    		@msg = 'this is sample page edit.'
  end

  def dell
    		@msg = 'this is sample page dell.'
  end

  def list
    		@msg = 'this is sample page list.'
  end
end