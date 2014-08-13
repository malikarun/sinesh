class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # POST /comments
  # POST /comments.json
  def create
    @commentable = params[:commentable_type].constantize.find params[:commentable_id]
    @comment = @commentable.comments.new(comment_params.merge user: current_user)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to :back, notice: 'comment was successfully created.' }
        format.json { render :show, status: :created, location: :back }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
       params.require(:comment).permit!
    end
end
