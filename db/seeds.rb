# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(name: "SleggarLaw")

# 参加者
Participant.create(name: "アベル", handicap: 0, isMember: true)
Participant.create(name: "のい", handicap: 0, isMember: true)
Participant.create(name: "ララァ", handicap: -100, isMember: true)
Participant.create(name: "さちお", handicap: -200, isMember: true)
Participant.create(name: "パイセン", handicap: -100, isMember: true)
Participant.create(name: "いとゆら", handicap: -200, isMember: true)
Participant.create(name: "ろうか", handicap: -100, isMember: true)
Participant.create(name: "ふぇね", handicap: -100, isMember: false)
Participant.create(name: "れおもん", handicap: 0, isMember: true)
Participant.create(name: "にゃんこふ", handicap: -100, isMember: false)
Participant.create(name: "でべそ", handicap: 0, isMember: true)

# 対局記録
Score.create(date: Date.new(2023, 3, 6),
  first_participantID: 1,                                        
  first_score: 39200,                                            
  second_participantID: 2,                                       
  second_score: 26400,                                           
  third_participantID: 3,                                        
  third_score: 20400,                                            
  fourth_participantID: 4,                                       
  fourth_score: 14000
)
Score.create(date: Date.new(2023, 3, 6),
  first_participantID: 4,
  first_score: 29500,
  second_participantID: 2,
  second_score: 27600,
  third_participantID: 3,
  third_score: 21900,
  fourth_participantID: 1,
  fourth_score: 21000
)
Score.create(date: Date.new(2023, 3, 7),
  first_participantID: 5,
  first_score: 42700,
  second_participantID: 6,
  second_score: 26000,
  third_participantID: 4,
  third_score: 17800,
  fourth_participantID: 2,
  fourth_score: 13500
)
Score.create(date: Date.new(2023, 3, 9),
  first_participantID: 4,
  first_score: 35000,
  second_participantID: 5,
  second_score: 34100,
  third_participantID: 2,
  third_score: 17000,
  fourth_participantID: 3,
  fourth_score: 13900
)
Score.create(date: Date.new(2023, 3, 10),
  first_participantID: 1,
  first_score: 47100,
  second_participantID: 4,
  second_score: 22000,
  third_participantID: 7,
  third_score: 15900,
  fourth_participantID: 2,
  fourth_score: 15000
)
Score.create(date: Date.new(2023, 3, 10),
  first_participantID: 4,
  first_score: 36000,
  second_participantID: 1,
  second_score: 29400,
  third_participantID: 7,
  third_score: 23500,
  fourth_participantID: 2,
  fourth_score: 11100
)
Score.create(date: Date.new(2023, 3, 10),
  first_participantID: 4,
  first_score: 29400,
  second_participantID: 2,
  second_score: 25100,
  third_participantID: 7,
  third_score: 23500,
  fourth_participantID: 1,
  fourth_score: 22000
)
Score.create(date: Date.new(2023, 3, 10),
  first_participantID: 8,
  first_score: 48000,
  second_participantID: 2,
  second_score: 22000,
  third_participantID: 1,
  third_score: 18000,
  fourth_participantID: 9,
  fourth_score: 12000
)
Score.create(date: Date.new(2023, 3, 10),
  first_participantID: 2,
  first_score: 44700,
  second_participantID: 9,
  second_score: 26600,
  third_participantID: 8,
  third_score: 19600,
  fourth_participantID: 1,
  fourth_score: 9100
)
Score.create(date: Date.new(2023, 3, 11),
  first_participantID: 4,
  first_score: 47000,
  second_participantID: 10,
  second_score: 30000,
  third_participantID: 1,
  third_score: 16000,
  fourth_participantID: 2,
  fourth_score: 7000
)
Score.create(date: Date.new(2023, 3, 11),
  first_participantID: 4,
  first_score: 34100,
  second_participantID: 1,
  second_score: 31200,
  third_participantID: 2,
  third_score: 24600,
  fourth_participantID: 10,
  fourth_score: 10100
)
Score.create(date: Date.new(2023, 3, 11),
  first_participantID: 4,
  first_score: 51500,
  second_participantID: 10,
  second_score: 22000,
  third_participantID: 2,
  third_score: 20000,
  fourth_participantID: 1,
  fourth_score: 6500
)
Score.create(date: Date.new(2023, 3, 11),
  first_participantID: 4,
  first_score: 35000,
  second_participantID: 2,
  second_score: 28200,
  third_participantID: 1,
  third_score: 23400,
  fourth_participantID: 11,
  fourth_score: 13400
)
Score.create(date: Date.new(2023, 3, 11),
  first_participantID: 4,
  first_score: 44500,
  second_participantID: 11,
  second_score: 29200,
  third_participantID: 1,
  third_score: 17800,
  fourth_participantID: 2,
  fourth_score: 8500
)