# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
if ActiveRecord::Base.connection.table_exists? 'articles'
    Article.where(title: 'I love Ruby!', category: 'ruby').first_or_create
    Article.where(title: 'I love Elasticsearch!', category: 'elasicsearch').first_or_create
    Article.where(title: "Why it's always sunny in California?", category: 'other').first_or_create
end