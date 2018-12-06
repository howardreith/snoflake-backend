class GroupInvitationsController < OpenReadController
  before_action :set_group_invitation, only: [:update, :destroy]

  # GET /group_invitations
  def index
    @group_invitations = GroupInvitation.all

    render json: @group_invitations
  end

  # GET /group_invitations/1
  def show
    render json: GroupInvitation.find(params[:id])
  end

  # POST /group_invitations
  def create
    @group_invitation = current_user.sent_invitations.build(group_invitation_params)

    if @group_invitation.save
      render json: @group_invitation, status: :created
    else
      render json: @group_invitation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /group_invitations/1
  def update
    if @group_invitation.update(group_invitation_params)
      render json: @group_invitation
    else
      render json: @group_invitation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /group_invitations/1
  def destroy
    @group_invitation.destroy
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_group_invitation
      @group_invitation = GroupInvitation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def group_invitation_params
      params.require(:group_invitation).permit(:message, :inviter_id, :invited_id, :group_id, :accepted)
    end
end
