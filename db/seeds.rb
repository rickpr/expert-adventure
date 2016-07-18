["branch", "college", "role"].each do |klass|
  JSON.parse(File.read(Rails.root.join("db", "data", "#{klass}.json"))).each do |row| 
    klass.classify.constantize.create(row)
  end
end

JSON.parse(File.read(Rails.root.join("db", "data", "section.json"))).each do |row| 
  Section.create(row.merge(role: Role.find_by(name: row["role"])))
end

["department", "division"].each do |unit|
  JSON.parse(File.read(Rails.root.join("db", "data", "#{unit}.json"))).each do |row|
    Unit.create(type: unit.classify, school: School.find_by(name: row["school"]))
  end
end

JSON.parse(File.read(Rails.root.join("db", "data", "role_policy.json"))).each do |row|
  RolePolicy.create(administrator_role_id: Role.find_by(name: row["administrator_role"]).id,
                    managed_role_id: Role.find_by(name: row["managed_role"]).id)
end

JSON.parse(File.read(Rails.root.join("db", "data", "user.json"))).each do |user|
  User.create(user.merge(roles: user["roles"].map { |role| Role.find_by(name: role) }))
end
