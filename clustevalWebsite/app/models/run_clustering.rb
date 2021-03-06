class RunClustering < ActiveRecord::Base
	belongs_to :repository
	belongs_to :run_execution

	def to_param
  		return self.run_execution.to_param
	end

  def self.all(session = nil, *args)
	if session
		return self.where("repository_id = ?",Repository.find(session))
	else
		return super()
	end
  end
end
