class RunParameterOptimizationParameter < ActiveRecord::Base
	belongs_to :repository
	belongs_to :run_parameter_optimization
	belongs_to :program_parameter
	belongs_to :program_config
  # attr_accessible :title, :body

  def self.all(session, *args)
	if session
		return self.find(:all, :conditions => ["repository_id = ?",Repository.find(session)])
	else
		return super.all
	end
  end
end
