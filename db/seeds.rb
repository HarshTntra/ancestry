# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

root_category = Category.create(name: 'Root Category')
child_category = Category.create(name: 'Child Category', parent: root_category)
grandchild_category = Category.create(name: 'Grandchild Category', parent: child_category)

# Get the ancestors of a category 
#grandchild_category.ancestors # Returns [child_category, root_category]

# Get the descendants of a category
#root_category.descendants # Returns [child_category, grandchild_category]

#above code is referenced  how to get childer and paraent using 