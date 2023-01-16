require "application_system_test_case"

class JobReportsTest < ApplicationSystemTestCase
  setup do
    @job_report = job_reports(:one)
  end

  test "visiting the index" do
    visit job_reports_url
    assert_selector "h1", text: "Job reports"
  end

  test "should create job report" do
    visit job_reports_url
    click_on "New job report"

    fill_in "Company", with: @job_report.company_id
    fill_in "End date", with: @job_report.end_date
    fill_in "Salary", with: @job_report.salary
    fill_in "Sequence", with: @job_report.sequence
    fill_in "Start date", with: @job_report.start_date
    fill_in "Title", with: @job_report.title
    click_on "Create Job report"

    assert_text "Job report was successfully created"
    click_on "Back"
  end

  test "should update Job report" do
    visit job_report_url(@job_report)
    click_on "Edit this job report", match: :first

    fill_in "Company", with: @job_report.company_id
    fill_in "End date", with: @job_report.end_date
    fill_in "Salary", with: @job_report.salary
    fill_in "Sequence", with: @job_report.sequence
    fill_in "Start date", with: @job_report.start_date
    fill_in "Title", with: @job_report.title
    click_on "Update Job report"

    assert_text "Job report was successfully updated"
    click_on "Back"
  end

  test "should destroy Job report" do
    visit job_report_url(@job_report)
    click_on "Destroy this job report", match: :first

    assert_text "Job report was successfully destroyed"
  end
end
