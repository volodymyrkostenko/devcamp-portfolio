class PortfoliosController < ApplicationController
	before_action :set_portfolio, only: [:show, :edit, :update, :destroy]
	  access all: [:show, :index, :angular, :ruby_on_rails], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all

	layout 'portfolio'

	def index
		@portfolio_items = Portfolio.all
	end

	def angular
		@angular_portfolio_items = Portfolio.angular
	end
	def ruby_on_rails
		@rails_portfolio_items = Portfolio.ruby_on_rails_portfolio_items
	end
	def new 
		@portfolio_item = Portfolio.new
		3.times{@portfolio_item.technologies.build }
	end
	def create 
		@portfolio_item = Portfolio.new(portfolio_params)
		respond_to do |format|
			if @portfolio_item.save
				format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created.' }
			else
				format.html {render new}
			end
		end
	end
	def show

	end
	def edit
		3.times{@portfolio_item.technologies.build }
	end
	def destroy
		
		@portfolio.destroy
		 respond_to do |format|
		    format.html { redirect_to portfolios_path, notice: 'Record was remove.' }
		 end

	end
	def update
		respond_to do |format|
	      if @portfolio_item.update(portfolio_params)
	        format.html { redirect_to portfolios_path, notice: 'Record was successfully updated.' }
	      else 
	        format.html { render :edit }
	      end
    	end
	end
	private 
		def portfolio_params 
			params.require(:portfolio).permit(:title, 
											  :subtitle, 
											  :body,
											   technologies_attributes: [:name]
											   )
		end
		def set_portfolio 
			@portfolio_item = Portfolio.find(params[:id])
		end
end
