class EventCommentsController < OpenReadController
  before_action :set_event_comment, only: [:update, :destroy]

  # GET /event_comments
  def index
    @event_comments = EventComment.all

    render json: @event_comments
  end

  # GET /event_comments/1
  def show
    render json: EventComment.find(params[:id])
  end

  # POST /event_comments
  def create
    @event_comment = current_user.event_comments.build(event_comment_params)

    if @event_comment.save
      render json: @event_comment, status: :created
    else
      render json: @event_comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /event_comments/1
  def update
    if @event_comment.update(event_comment_params)
      render json: @event_comment
    else
      render json: @event_comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /event_comments/1
  def destroy
    @event_comment.destroy

    head :no_content
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_event_comment
      @event_comment = EventComment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def event_comment_params
      params.require(:event_comment).permit(:content, :user_id, :event_id)
    end

    private :set_event_comment, :event_comment_params
end
