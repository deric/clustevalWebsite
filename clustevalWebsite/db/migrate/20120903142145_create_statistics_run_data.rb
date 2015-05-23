class CreateStatisticsRunData < ActiveRecord::Migration
  def change
    create_table :statistics_run_data do |t|

    t.integer "repository_id", :null => false
    t.integer "statistic_id",  :null => false
  end

  add_index "statistics_run_data", ["repository_id", "statistic_id"], :name => "statistics_run_data_index4", :unique => true
  add_index "statistics_run_data", ["repository_id"], :name => "fk_statisticsRunData_1"
  add_index "statistics_run_data", ["statistic_id"], :name => "fk_statisticsRunData_2"
  end
end
