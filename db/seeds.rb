# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
TOTALS = [100, 200, 150, 250, 300, 350]
DAYS = (1..28).to_a
MONTHS = (1..12).to_a
YEAR = 2013

HOURS = (1..23).to_a
MINUTES = (1..59).to_a

(1..1000).each do |index|
  Sale.create total: TOTALS.sample, created_at: Time.parse("#{YEAR}/#{MONTHS.sample}/#{DAYS.sample} #{HOURS.sample}:#{MINUTES.sample}")
end
