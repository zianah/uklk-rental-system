class ReportsController < ApplicationController

  before_action :set_report, only: [:destroy]
  before_action :authenticate_user!

  def index
    @reports = Report.all
  end

  def new
    @report = current_user.reports.build
  end

  def create
    @report = current_user.reports.build(report_params)

    respond_to do |format|
      if @report.save
        format.html { redirect_to root_path, notice: 'Report was successfully posted.' }
        format.json { render :show, status: :created, location: @report }
      else
        format.html { render :new }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @report.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Report was successfully removed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_report
      @report = Report.find(params[:id])
    end

    def report_params
      params.require(:report).permit(:title, :message, :user_id)
    end
end
