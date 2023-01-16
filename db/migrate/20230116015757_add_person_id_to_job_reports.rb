class AddPersonIdToJobReports < ActiveRecord::Migration[7.0]
  def change
    add_column :job_reports, :person_id, :integer
  end
end
