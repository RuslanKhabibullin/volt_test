module Api
  module V1
    class ReportsController < ApplicationController
      before_action :authenticate_user!

      def by_author
        Delayed::Job.enqueue(
          GenerateReportDataJob.new(
            report_params[:email],
            report_params[:start_date],
            report_params[:end_date]
          )
        )
        render json: { message: "Report generation started" }, status: :created
      end

      private

      def report_params
        params.permit(:start_date, :end_date, :email)
      end
    end
  end
end
