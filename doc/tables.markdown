# Users
- netid: String
- name: String

``` bash
rails g scaffold user netid name
```
#UserRole
- user: References
- role: References
- unit: References
- school: References
- has\_dossier: Boolean

``` bash
rails g scaffold user_role user:references role:references unit:references \
school:references has_dossier:boolean
```
# Roles
- name: String
- rank: Integer
- admin: Boolean
- candidate: Boolean

``` bash
rails g scaffold role name rank:integer admin:boolean candidate:boolean
```
# School
# Colleges / Branches
- name: String
- type: String
``` bash
rails g scaffold school name type
rails g scaffold college name type --parent school
rails g scaffold branch name type --parent school
```

# Unit
# Departments / Divisions
- name: String
- school: References
- type: String
``` bash
rails g scaffold unit school:references name type
rails g scaffold department school:references name type --parent unit
rails g scaffold division school:references name type --parent unit
```

# Sections
- name: String
- role: References
- pdf: Boolean
``` bash
rails g scaffold name role:references pdf:boolean
```

# Uploads
- name: String
- rank: Integer
- user: References
- section: References
- file: File
``` bash
rails g scaffold upload name rank:integer user:references section:references
rails g paperclip upload file
```

# Recusal
- reviewer: References
- candidate: References
``` bash
rails g scaffold recusal reviewer:references candidate:references
```

# RolePolicies
- administrator\_role: references
- managed\_role: references
- within: class
``` bash
rails g scaffold role_policy administrator_role:references\
managed_role:references within
```
