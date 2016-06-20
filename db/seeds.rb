# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

messages = [
  "У нас нова акція: знижки 10% на всі товари відділу Бакалії!",
  "На третьому поверсі нашого торгівельного центру відкрився магазин спортивного одягу",
  "Курс валют на станом на 10:00 USD 23"
  ]

Device.delete_all
Message.delete_all
DevicesMessage.delete_all

messages.each do |m|
  Message.create!(title: m)
end