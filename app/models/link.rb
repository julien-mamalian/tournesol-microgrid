# == Schema Information
#
# Table name: links
#
#  id         :integer          not null, primary key
#  article_id :integer
#  project_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_links_on_article_id  (article_id)
#  index_links_on_project_id  (project_id)
#

class Link < ActiveRecord::Base
  belongs_to :article
  belongs_to :project
end
