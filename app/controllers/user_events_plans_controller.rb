class UserEventsPlansController < OpenReadController
  before_action :set_user_events_plan, only: [:update, :destroy]

  # GET /user_events_plans
  def index
    @user_events_plans = UserEventsPlan.all

    render json: @user_events_plans
  end

  # GET /user_events_plans/1
  def show
    render json: UserEventsPlan.find(params[:id])
  end

  # POST /user_events_plans
  def create
    @user_events_plan = current_user.user_events_plans.build(user_events_plan_params)

    if @user_events_plan.save
      render json: @user_events_plan, status: :created
    else
      render json: @user_events_plan.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_events_plans/1
  def update
    if @user_events_plan.update(user_events_plan_params)
      render json: @user_events_plan
    else
      render json: @user_events_plan.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_events_plans/1
  def destroy
    @user_events_plan.destroy
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_user_events_plan
      @user_events_plan = current_user.user_events_plans.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_events_plan_params
      params.require(:user_events_plan).permit(:user_id, :event_id)
    end

    private :set_user_events_plan, :user_events_plan_params
end
