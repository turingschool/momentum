require "test_helper"

class JobReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_report = job_reports(:one)
  end

  test "should get index" do
    get job_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_job_report_url
    assert_response :success
  end

  test "should create job_report" do
    assert_difference("JobReport.count") do
      post job_reports_url, params: { job_report: { company_id: @job_report.company_id, end_date: @job_report.end_date, salary: @job_report.salary, sequence: @job_report.sequence, start_date: @job_report.start_date, title: @job_report.title } }
    end

    assert_redirected_to job_report_url(JobReport.last)
  end

  test "should show job_report" do
    get job_report_url(@job_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_report_url(@job_report)
    assert_response :success
  end

  test "should update job_report" do
    patch job_report_url(@job_report), params: { job_report: { company_id: @job_report.company_id, end_date: @job_report.end_date, salary: @job_report.salary, sequence: @job_report.sequence, start_date: @job_report.start_date, title: @job_report.title } }
    assert_redirected_to job_report_url(@job_report)
  end

  test "should destroy job_report" do
    assert_difference("JobReport.count", -1) do
      delete job_report_url(@job_report)
    end

    assert_redirected_to job_reports_url
  end
end
