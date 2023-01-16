class CreateJobReports < ActiveRecord::Migration[7.0]
  def change
    create_table :job_reports do |t|
      t.integer :sequence
      t.integer :company_id
      t.string :title
      t.integer :salary
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
