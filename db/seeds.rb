
c1 = Character.create(name: "Peter Griffin")
c2 = Character.create(name: "Brian Griffin")
c3 = Character.create(name: "Lois Griffin")
c4 = Character.create(name: "Meg Griffin")
c5 = Character.create(name: "Chris Griffin")
c6 = Character.create(name: "Stewie Griffin")
c7 = Character.create(name: "Glenn Quagmire")
c8 = Character.create(name: "Joe Swanson")
c9 = Character.create(name: "Cleveland Brown")
c10 = Character.create(name: "Tom Tucker")



q1 = Quote.create(
    id: '', 
    text: "I haven't felt this great in years! I feel like Arnold Schwarzenegger, except without the fruity accent or the Pirates of the Caribbean wife.", 
    rating: '5', 
    character_id: '1')
q2 = Quote.create(
    id: '', 
    text: "You know, it's times like this where I think if I didn't talk and you were a normal baby, we wouldn't have any of these problems.", 
    rating: '9', 
    character_id: '2')
q3 = Quote.create(
    id: '', 
    text: "Peter, we have a hamper. Stop throwing your dirty clothes in the toilet.", 
    rating: '5', 
    character_id: '3')
q4 = Quote.create(
    id: '', 
    text: "I cut your name into my arm so I can always remember you.", 
    rating: '4', 
    character_id: '4')
q5 = Quote.create(
    id: '', 
    text: "I thought you were this wordly, sophisticated guy, but you're just a fraud. Like Moses.", 
    rating: '5', 
    character_id: '5')
q6 = Quote.create(
    id: '', 
    text: "Alright I guess this is the night b****es die.", 
    rating: '5', 
    character_id: '6')
q7 = Quote.create(
    id: '', 
    text: "I'm an idiot? All anyone remembers from your argument is that you're in a wheelchair!", 
    rating: '5', 
    character_id: '7')
q8 = Quote.create(
    id: '', 
    text: "Peter, face it. Without Quagmire, we're boring.", 
    rating: '5', 
    character_id: '8')
q9 = Quote.create(
    id: '', 
    text: "Oh, yeah. Black guys put hot sauce on everything on account most of us have been pepper-sprayed by the time we're two.", 
    rating: '5', 
    character_id: '9')
q10 = Quote.create(
    id: '', 
    text: "Do you know who I am? I'm Tom Tucker, dammit! I make more in an hour than you make in two hours!", 
    rating: '5', 
    character_id: '10')

puts 'Quotes Seeded'

puts 'Seeding complete'