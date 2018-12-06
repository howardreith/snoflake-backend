class GroupCommentsController < OpenReadController
  before_action :set_group_comment, only: [:update, :destroy]

  # GET /group_comments
  def index
    @group_comments = GroupComment.all

    render json: @group_comments
  end

  # GET /group_comments/1
  def show
    render json: GroupComment.find(params[:id])
  end

  # POST /group_comments
  def create
    @group_comment = current_user.group_comments.build(group_comment_params)

    if @group_comment.save
      render json: @group_comment, status: :created
    else
      render json: @group_comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /group_comments/1
  def update
    if @group_comment.update(group_comment_params)
      render json: @group_comment
    else
      render json: @group_comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /group_comments/1
  def destroy
    @group_comment.destroy

    head :no_content
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_group_comment
      @group_comment = GroupComment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def group_comment_params
      params.require(:group_comment).permit(:content, :user_id, :group_id)
    end

    private :set_group_comment, :group_comment_params
end
