class ClusteringMethodDescriptionCell < MyCell
	include ActionView::Helpers::FormTagHelper

	def show(opts)
		begin
	  		render :view => 'display', :locals => {:method => opts[:method], :detailsLink => opts[:detailsLink]}
	  		return
	  	rescue
	  	end
	  	render :text => opts[:method].full_name + '<br />'
	end
end
