class EventInvitationsController < OpenReadController
  before_action :set_event_invitation, only: [:update, :destroy]

  # GET /event_invitations
  def index
    @event_invitations = EventInvitation.all

    render json: @event_invitations
  end

  # GET /event_invitations/1
  def show
    render json: EventInvitation.find(params[:id])
  end

  # POST /event_invitations
  def create
    @event_invitation = current_user.sent_event_invitations.build(event_invitation_params)

    if @event_invitation.save
      render json: @event_invitation, status: :created
    else
      render json: @event_invitation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /event_invitations/1
  def update
    if @event_invitation.update(event_invitation_params)
      render json: @event_invitation
    else
      render json: @event_invitation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /event_invitations/1
  def destroy
    @event_invitation.destroy
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_event_invitation
      @event_invitation = EventInvitation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def event_invitation_params
      params.require(:event_invitation).permit(:message, :invited_id, :group_inviter_id, :user_inviter_id, :event_id, :accepted)
    end

    private :set_event_invitation, :event_invitation_params
end
