class CompanyCommentsController < ApplicationController
  expose(:company_comment)
  expose(:company)

  def create
    company_comment = CompanyComment.new(company_comments_params)
    company_comment.user_id = current_user.id
    if company_comment.save
      company.company_comments << company_comment
      redirect_to company, notice: 'Comment was created.'
    else
      render :new
    end
  end

  def destroy
    company_comment.destroy
    redirect_to company, notice: 'Comment was destroyed.'
  end

  private
    
  def company_comments_params
    params.require(:company_comment).permit(:title, :body)
  end
end
