rails g rspec:install
rails g pundit:install
# Users
rails g scaffold user netid name
#UserRole
rails g scaffold user_role user:references role:references unit:references \
school:references has_dossier:boolean
# Roles
rails g scaffold role name rank:integer admin:boolean candidate:boolean
# School
rails g scaffold school name type
# Colleges / Branches
rails g scaffold college name type --parent school
rails g scaffold branch name type --parent school

# Unit
rails g scaffold unit school:references name type
# Departments / Divisions
rails g scaffold department school:references name type --parent unit
rails g scaffold division school:references name type --parent unit

# Sections
rails g scaffold section name role:references pdf:boolean

# Uploads
rails g scaffold upload name rank:integer user:references section:references
rails g paperclip upload file

# Recusal
rails g scaffold recusal reviewer:references candidate:references

# RolePolicies
rails g scaffold role_policy administrator_role:references \
managed_role:references within
