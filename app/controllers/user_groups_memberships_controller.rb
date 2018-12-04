class UserGroupsMembershipsController < OpenReadController
  before_action :set_user_groups_membership, only: [:update, :destroy]

  # GET /user_groups_memberships
  def index
    @user_groups_memberships = UserGroupsMembership.all

    render json: @user_groups_memberships
  end

  # GET /user_groups_memberships/1
  def show
    render json: UserGroupsMembership.find(params[:id])
  end

  # POST /user_groups_memberships
  def create
    @user_groups_membership = current_user.user_groups_memberships.build(user_groups_membership_params)

    if @user_groups_membership.save
      render json: @user_groups_membership, status: :created
    else
      render json: @user_groups_membership.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_groups_memberships/1
  def update
    if @user_groups_membership.update(user_groups_membership_params)
      render json: @user_groups_membership
    else
      render json: @user_groups_membership.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_groups_memberships/1
  def destroy
    @user_groups_membership.destroy
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_user_groups_membership
      @user_groups_membership = current_user.user_groups_memberships.find(params[:user_id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_groups_membership_params
      params.require(:user_groups_membership).permit(:group_id, :user_id)
    end

    private :set_user_groups_membership, :user_groups_membership_params
end
