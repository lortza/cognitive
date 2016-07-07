# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

HealthyThoughtType.create(name: 'Flexible', explanation: "Letting go of “rules and cultivating preferences.", example: 'I prefer that the bed is made first thing in the morning, and I also understand that can’t always happen.')
HealthyThoughtType.create(name: 'Gratitude', explanation: "Noticing and appreciating what is right and good.", example: "Whoa! That person just nearly hit me, but they didn't and I didn't die. Phew!")
HealthyThoughtType.create(name: 'Grey is Good/Middle Faucet', explanation: "Accepting that 'Sometimes,' & 'maybe,' are more accurate than extreme statements.", example: 'I didn’t get invited to the wedding and maybe she doesn’t feel as close to me as some of her other friends. That doesn’t mean she hates me.')
HealthyThoughtType.create(name: 'Growth Mindset', explanation: "Imperfection is a sign of growth and development.", example: 'Effort counts. I’m not where I want to be but I’m much better than I was. If I keep working at it I’ll continue to improve.')
HealthyThoughtType.create(name: 'Loving Inner Parent', explanation: "Supportive, motivating and wise inner voice.", example: 'It’s going to be okay. I love you no matter what. Here’s how you can do this better next time.')
HealthyThoughtType.create(name: 'Optimism', explanation: "Identifying best-case scenario.", example: 'Yes, the plane could crash. And, I could also have the most amazing vacation I’ve ever been on, and have those memories for the rest of my life.')
HealthyThoughtType.create(name: "'Some' Shaker", explanation: "Allowing space for some of this and some of that", example: 'I am getting some things wrong and I am getting some things right.')
HealthyThoughtType.create(name: 'Rational', explanation: "Thoughts based in ALL the evidence. Exceptions count.", example: 'Just because I got a ‘needs improvement’ does not mean I’m about to get fired. I can’t tell the future.')
UnhealthyThoughtType.create(name: 'Black and White', explanation: "All good or all bad.", example: 'I made a typo so the article is total junk.')
UnhealthyThoughtType.create(name: 'Catastrophizing', explanation: "The worst case scenario is going to happen.", example: 'I got a ‘needs improvement’ on my review, so I’m going to get fired.')
UnhealthyThoughtType.create(name: 'Disqualifying Positives', explanation: "Disregarding non-negative evidence.", example: 'Yes, this good thing happened but it didn’t count.')
UnhealthyThoughtType.create(name: 'Emotional Reasoning', explanation: "Drawing conclusions based on feelings.", example: 'I feel anxious so something bad is about to happen.')
UnhealthyThoughtType.create(name: 'Fortune Telling', explanation: "I know what is going to happen.", example: 'If I try to talk to my wife about this she will freak out.')
UnhealthyThoughtType.create(name: 'Judgement', explanation: "Being judgemental of other people", example: "That person nearly ran into me. What an irresponsible and careless person.")
UnhealthyThoughtType.create(name: 'Mental Filtering', explanation: "Exclusively focusing on negative evidence.", example: 'I always mess up.')
UnhealthyThoughtType.create(name: 'Mind Reading', explanation: "Making assumptions about the thoughts or feelings of others.", example: 'She didn’t call me because she hates me.')
UnhealthyThoughtType.create(name: 'Name calling', explanation: "Verbal abuse towards yourself.", example: 'I didn’t have time to make a home cooked meal tonight, so I am a lazy, bad mother.2')
UnhealthyThoughtType.create(name: 'Overgeneralizations', explanation: "Sweeping, global statements based on a single event.", example: 'I bounced a check so I am horrible with money.')
UnhealthyThoughtType.create(name: 'Personalization', explanation: "It’s all about you.", example: 'It’s all my fault. or This person did this thing because of me.')
UnhealthyThoughtType.create(name: "Inside Out", explanation: "Comparing my insides to others' outsides", example: "I can't even get my life together and I don't even have a full time job or kids")
UnhealthyThoughtType.create(name: 'Rules Should and Musts', explanation: "This is the only way things can be. Anything else is bad.", example: 'A good mom must make a balanced, home-cooked meal every evening.')

Record.create(date: Date.new(2015, 7, 8), event: "staying in bed this morning because it felt nice", thought_about_event: "i am really lazy and unproductive. i am not nearly as effective as she is.", feeling_about_thought: "guilty and bad about myself", unhealthy_action: "felt crappy about taking time to take care of myself. probably won't indulge n things that make me happy as often.", unhealthy_thought_type_id: 9, healthy_thought_type_id: 5, reframe_statement: "i was being so present and grateful for feeling comfortabletoday that i just wanted to stay with it for a while and feel good before moving on with the day", healthy_action: "recognize that this is actually an area of growth and let myself do things that feel good just for the sake of feeling good", star: 0)