class CommentBroadcastJob < ApplicationJob
  queue_as :default
  
  def preform(comment)
    ActionCable.server.broadcast "blogs_#{comment.blog.id}_channel", comment: render_comment(comment)
  end
  
  private
  
  def remder_comment(comment)
    CommentsController.render partial: 'comments/comment', locals: {comment: cpomment}
  end
end