# == Schema Information
#
# Table name: comments_articles
#
#  id            :integer          not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  description   :string
#  date_creation :date
#  article_id    :integer
#  user_id       :integer
#  votes         :integer
#
# Indexes
#
#  index_comments_articles_on_article_id  (article_id)
#  index_comments_articles_on_user_id     (user_id)
#

class CommentsArticle < ActiveRecord::Base
  acts_as_votable

  belongs_to :user
  belongs_to :article
end
