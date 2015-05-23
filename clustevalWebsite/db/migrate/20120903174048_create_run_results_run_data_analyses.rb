class CreateRunResultsRunDataAnalyses < ActiveRecord::Migration
  def change
    create_table :run_results_run_data_analyses do |t|

    t.integer "repository_id",               :null => false
    t.integer "run_results_analysis_id", :null => false
  end

  add_index "run_results_run_data_analyses", ["repository_id", "run_results_analysis_id"], :name => "run_results_run_data_analyses_index4", :unique => true
  add_index "run_results_run_data_analyses", ["repository_id"], :name => "fk_run_results_run_data_analysis_1"
  add_index "run_results_run_data_analyses", ["run_results_analysis_id"], :name => "fk_run_results_run_data_analysis_2"
  end
end
