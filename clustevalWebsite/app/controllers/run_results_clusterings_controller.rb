class RunResultsClusteringsController < ApplicationController
	
	def show
		@runResult = RunResult.includes(
			
				{:run => :run_type}
			).find_by_id(params[:id])
		@runResultExecution = RunResultsExecution.find_by_run_result_id(@runResult.id)
		@runResultClustering = RunResultsClustering.find_by_run_results_execution_id(@runResultExecution.id)

		@runResultQualities = RunResultsClusteringQuality.where(:run_results_clustering_id => @runResultClustering.id)

		@run = @runResult.run
		@runExecution = RunExecution.find_by_run_id(@run.id)	
		@run = RunClustering.find_by_run_execution_id(@runExecution.id)

		# log file
		logPath = @runResult.abs_path + '/logs/' + @runResult.abs_path.split('/')[-1] + '.log'
		file = File.open(logPath)
		@logContents = ""
		while tmp = file.gets do
			@logContents << tmp
		end
	end
end
