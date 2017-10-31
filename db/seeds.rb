# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Subject.where(code: 'WEB').count == 0
  web = Subject.create!(title: 'Webové Technologie', code: 'WEB')

  ['HTML', 'CSS', 'JS'].each do |topic_name|
    topic = Topic.create!(subject: web, title: topic_name)

    topic.questions << Question.new(topic: topic, title: "Co je to #{topic_name}?", score: 5, hint: 'napište význam zkratky i k čemu se to používá')
    topic.questions << Question.new(topic: topic, title: "K čemu slouží #{topic_name}? K čemu se naopak používat nemá?", score: 5, hint: 'napište k čemu se to používá a k čemu se to používat nemá')

    topic.save!
  end

  web_template = Template.create!(subject: web, title: 'Semestrální Test 1')
end