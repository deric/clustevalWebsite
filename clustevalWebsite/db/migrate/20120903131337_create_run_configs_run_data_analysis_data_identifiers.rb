class CreateRunConfigsRunDataAnalysisDataIdentifiers < ActiveRecord::Migration
  def change
    create_table :run_run_data_analysis_data_identifiers do |t|

    t.integer "repository_id",                           :null => false
    t.integer "run_run_data_analysis_id",                :null => false
    t.binary  "dataIdentifier",           :limit => 200, :null => false
  end

  add_index "run_run_data_analysis_data_identifiers", ["repository_id", "run_run_data_analysis_id", "dataIdentifier"], :name => "index4", :unique => true, :length => {"dataIdentifier" => 200}
  add_index "run_run_data_analysis_data_identifiers", ["repository_id"], :name => "fk_runs_run_data_analysis_data_identifiers_1"
  add_index "run_run_data_analysis_data_identifiers", ["run_run_data_analysis_id"], :name => "fk_runs_run_data_analysis_data_identifiers_2"
  end
end
