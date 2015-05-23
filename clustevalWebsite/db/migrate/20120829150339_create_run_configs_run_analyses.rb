class CreateRunConfigsRunAnalyses < ActiveRecord::Migration
  def change
    create_table :run_run_analyses do |t|

    t.integer "repository_id",   :null => false
    t.integer "run_analysis_id", :null => false
  end

  add_index "run_run_analyses", ["repository_id", "run_analysis_id"], :name => "run_run_analyses_index4", :unique => true
  add_index "run_run_analyses", ["repository_id"], :name => "fk_runConfigsAnalysisRun_1"
  add_index "run_run_analyses", ["run_analysis_id"], :name => "fk_runConfigsAnalysisRun_2"
  end
end
