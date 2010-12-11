# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
Task.create(:description => 'This is the first task', :isDone => true, :order => 1)
Task.create(:description => 'This is the second task', :isDone => false, :order => 2)
Task.create(:description => 'This is the third task', :isDone => true, :order => 3)