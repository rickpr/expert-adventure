crumb :root do
  link "Home", root_path
end

crumb :phase_roles do
  link "Phase Roles", phase_roles_path
end

crumb :phases do
  link "Phases", phases_path
end

crumb :sections do
  link "Sections", sections_path
end

crumb :role_policies do
  link "Role_policies", role_policies_path
end

crumb :recusals do
  link "Recusals", recusals_path
end

crumb :uploads do
  link "Uploads", uploads_path
end

crumb :divisions do
  link "Divisions", divisions_path
end

crumb :departments do
  link "Departments", departments_path
end

crumb :units do
  link "Units", units_path
end

crumb :branches do
  link "Branches", branches_path
end

crumb :colleges do
  link "Colleges", colleges_path
end

crumb :schools do
  link "Schools", schools_path
end

crumb :roles do
  link "Roles", roles_path
end

crumb :user_roles do
  link "User Roles", user_roles_path
end

crumb :users do
  link "Users", users_path
end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).Rails.application.routes.draw do
