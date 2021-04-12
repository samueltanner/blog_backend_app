# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "Peter", email: "peter@email.com", password: "password")
User.create(name: "Test", email: "test@email.com", password: "password")

Post.create(user_id: 1, title: Faker::Company.catch_phrase, body: Faker::Hipster.paragraph(sentence_count: 6), image: "https://i.picsum.photos/id/302/200/300.jpg?hmac=b5e6gUSooYpWB3rLAPrDpnm8PsPb84p_NXRwD-DK-1I")
Post.create(user_id: 1, title: Faker::Company.catch_phrase, body: Faker::Hipster.paragraph(sentence_count: 6), image: "https://i.picsum.photos/id/131/200/300.jpg?hmac=9q7mRSOguNBFGg_gPPRKlfjNINGjXWeDBTYPP1_gEas")
Post.create(user_id: 1, title: Faker::Company.catch_phrase, body: Faker::Hipster.paragraph(sentence_count: 6), image: "https://i.picsum.photos/id/852/200/300.jpg?hmac=6IMZOkPF_q5nf8IwfYdfxPUyKnyPL1w8moDjTeMOT5g")
Post.create(user_id: 1, title: Faker::Company.catch_phrase, body: Faker::Hipster.paragraph(sentence_count: 6), image: "https://i.picsum.photos/id/135/200/300.jpg?hmac=d3sTOCUkxdC1OKCgh9wTPjck-gMWATyVHFvflla5vLI")
Post.create(user_id: 1, title: Faker::Company.catch_phrase, body: Faker::Hipster.paragraph(sentence_count: 6), image: "https://i.picsum.photos/id/640/200/300.jpg?hmac=wFv1Wyd-STy0zsr2E2USifr--6VcaWg6pOhzelisMIg")
Post.create(user_id: 1, title: Faker::Company.catch_phrase, body: Faker::Hipster.paragraph(sentence_count: 6), image: "https://i.picsum.photos/id/768/200/300.jpg?hmac=lFX2oZVTUayugh_YZQ5q6uoXJFYaOJz3d2_GLaIW2aU")
Post.create(user_id: 2, title: Faker::Company.catch_phrase, body: Faker::Hipster.paragraph(sentence_count: 6), image: "https://i.picsum.photos/id/100/200/300.jpg?hmac=MeTp97vw7VNDswRcCqUFkGNC8ILDvNfI4MRoHFyGcQ8")
Post.create(user_id: 2, title: Faker::Company.catch_phrase, body: Faker::Hipster.paragraph(sentence_count: 6), image: "https://i.picsum.photos/id/955/200/300.jpg?hmac=I4JBGrEHxErLo6XCZM73YcpyhJjX3GxLPggnlxcdU24")
Post.create(user_id: 2, title: Faker::Company.catch_phrase, body: Faker::Hipster.paragraph(sentence_count: 6), image: "https://i.picsum.photos/id/690/200/300.jpg?hmac=YX9nONyDZ_zuGZ5wLOen_mxLWVHEsjpkADU43laON4M")
