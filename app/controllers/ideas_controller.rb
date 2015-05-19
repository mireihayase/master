class IdeasController < ApplicationController

  def new
    @idea = Idea.new
    @ksf = ThinkContent.where(content_type:  :ksf).sample(1)[0]
    @market = ThinkContent.where(content_type: :market).sample(1)[0]
  end
  # binding.pry

  def show
    @idea = Idea.new
    @issue = ThinkContent.where(content_type: :issue).sample(1)[0]
    @target = ThinkContent.where(content_type: :target).sample(1)[0]
    @bzm = ThinkContent.where(content_type: :bzm).sample(1)[0]
  end

  def create
    Idea.create(create_params)
    redirect_to action: :new
  end

  def issue
# binding.pry
    ThinkContent.create(create_issue_params)
    redirect_to action: :show
  end

  private
  def create_params
    params.require(:idea).permit(:name, :outline, :value).merge(user_id: current_user.id)
  end

  def create_issue_params
    params.permit(:text).merge(content_type: :issue)
  end
end
