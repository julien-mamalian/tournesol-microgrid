# == Schema Information
#
# Table name: projects_comments
#
#  id          :integer          not null, primary key
#  description :string
#  user_id     :integer
#  project_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_projects_comments_on_project_id  (project_id)
#  index_projects_comments_on_user_id     (user_id)
#

class ProjectsComment < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
end
