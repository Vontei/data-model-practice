use erd-galleries
db.dropDatabase()
use test
use erd-galleries

pollockId = new ObjectId()
db.artists.insert({_id: pollockId, name: 'Jackson Pollock'})

daliId = new ObjectId()
db.artists.insert({_id: daliId, name: 'Salvador Dali'})

convergence = new ObjectId()
db.paintings.insert({_id: convergence, artist_id: pollockId, name: 'Convergence', price: '$2,000,000'})

theDeep = new ObjectId()
db.paintings.insert({_id: theDeep, artist_id: pollockId, name: 'The Deep', price: '$9,500,000'})


elephantsId = new ObjectId()
db.paintings.insert({_id: elephantsId, artist_id: daliId, name: 'The Elephants', price: '$50,000,000'})


db.gallery.insert({
  name: 'Sothebys',
  painting_ids: [convergence, theDeep, elephantsId]
})
