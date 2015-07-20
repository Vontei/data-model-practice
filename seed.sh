use erd-examples
db.dropDatabase()
use test
use erd-examples

joeId = new ObjectId()
db.players.insert({_id: joeId, name: 'Joe'})

sueId = new ObjectId()
db.players.insert({_id: sueId, name: 'Sue'})

timId = new ObjectId()
db.players.insert({_id: timId, name: 'Tim'})

kimId = new ObjectId()
db.players.insert({_id: kimId, name: 'Kim'})

winderMereId = new ObjectId()
db.courses.insert({_id: winderMereId, name: 'Windermere'})

bellevueId = new ObjectId()
db.courses.insert({_id: bellevueId, name: 'Bellevue'})

db.games.insert({
  courseId: winderMereId,
  date: new Date('Jun 23, 2014'),
  playerIds: [ joeId, timId ]
})

db.games.insert({
  courseId: winderMereId,
  date: new Date('April 15th, 2015'),
  playerIds: [ sueId, timId, kimId ]
})

db.games.insert({
  courseId: bellevueId,
  date: new Date('September 14th, 2014'),
  playerIds: [ sueId, joeId, kimId ]
})
