class GoldstandardsController < ApplicationController

	def index
		@goldstandards = Goldstandard.all(params[:repository])
		
		respond_to do |format|
			format.html # index.html.erb
			format.json { render :json => @goldstandards }
		end
	end
	
	def show
		@goldstandard = Goldstandard.find_by_id(params[:id])
		
		file = File.open(@goldstandard.abs_path)
		@contents = ""
		for i in 1..10 do
			tmp = file.gets
			if (tmp == nil)
				break
			end
			if tmp.length > 100
				@contents << tmp[1,40] << "[...]" << tmp[-40,40]
			else
				@contents << tmp
			end
		end

		
		respond_to do |format|
			format.html # index.html.erb
			format.json { render :json => @goldstandard }
		end
	end
end
