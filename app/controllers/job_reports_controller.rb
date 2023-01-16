class JobReportsController < ApplicationController
  before_action :set_job_report, only: %i[ show edit update destroy ]

  # GET /job_reports or /job_reports.json
  def index
    @job_reports = JobReport.all
  end

  # GET /job_reports/1 or /job_reports/1.json
  def show
  end

  # GET /job_reports/new
  def new
    @person = Person.find(params[:person_id])
    @job_report = @person.job_reports.new
  end

  # GET /job_reports/1/edit
  def edit
  end

  # POST /job_reports or /job_reports.json
  def create
    person = Person.find(params[:job_report][:person_id])
    @job_report = person.job_reports.new(job_report_params)

    respond_to do |format|
      if @job_report.save
        format.html { redirect_to @job_report.person, notice: "Job report was successfully created." }
        format.json { render :show, status: :created, location: @job_report }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @job_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_reports/1 or /job_reports/1.json
  def update
    respond_to do |format|
      if @job_report.update(job_report_params)
        format.html { redirect_to job_report_url(@job_report), notice: "Job report was successfully updated." }
        format.json { render :show, status: :ok, location: @job_report }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @job_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_reports/1 or /job_reports/1.json
  def destroy
    @job_report.destroy

    respond_to do |format|
      format.html { redirect_to job_reports_url, notice: "Job report was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_report
      @job_report = JobReport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def job_report_params
      params.require(:job_report).permit(:sequence, :company_id, :title, :salary, :start_date, :end_date)
    end
end
