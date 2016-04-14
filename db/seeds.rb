# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
r1 = Status.create({status_type: "Approved"})
r2 = Status.create({status_type: "Pending"})
r3 = Status.create({status_type: "Rejected"})

u1 = User.create({band_name: "mozo",contact_name: "Sally",phone_number:"8324446283", email: "sally@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", is_admin: 1})
u2 = User.create({band_name: "junoon",contact_name: "mike",phone_number:"7032724263", email: "mike@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", is_admin: 0})
u3 = User.create({band_name: "Fizza",contact_name: "kev",phone_number:"6354723487", email: "kev@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", is_admin: 0})
u4 = User.create({band_name: "BandBajaaBarat",contact_name: "jack",phone_number:"9084536274", email: "jack@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", is_admin: 0})

i1 = Booking.create({room_number: 1,user_id: u1.id, session_start: "2016-03-02 04:57:12",session_end:"2016-03-02 05:57:12",session_count:"1",status: r1.id})
i2 = Booking.create({room_number: 1,user_id: u2.id, session_start: "2016-03-03 04:57:12",session_end:"2016-03-03 06:37:12",session_count:"1",status: r1.id})
i3 = Booking.create({room_number: 1,user_id: u3.id, session_start: "2016-03-04 04:57:12",session_end:"2016-03-04 05:57:12",session_count:"1",status: r1.id})
