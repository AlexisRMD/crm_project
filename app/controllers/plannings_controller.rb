class PlanningsController < InheritedResources::Base

  def index
    # Scope your query to the dates being shown:
    start_date = params.fetch(:start_date, Date.today).to_date
    @plannings = Transaction.where(date_livraison: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
  end

  private

    def planning_params
      params.require(:planning).permit(:name, :start_time)
    end

end
