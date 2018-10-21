puts "Destrying Links"
Link.destroy_all

puts "Destroying Tasks"
Task.destroy_all

puts "Destroying Goals"
Goal.destroy_all

puts "Destroying Subjects"
Subject.destroy_all

puts "Destroying Users"
User.destroy_all

CATEGORIES = [
              ["otros"], ["artes"], ["medicina"], ["salud"], ["finanzas"], ["inteligencia-artificial"], ["intimacy"], ["sociales"], ["administración"], ["estudio"]
            ]

jan = User.create!(name: "jan", email: "jan@estudiant.upc.edu", password: "123456")
marina = User.create!(name: "marina", email: "marina@gmail.com", password: "123456")
jesus = User.create!(name: "santi", email: "jesus@gmail.com", password: "123456")
sara = User.create!(name: "santi", email: "sara@gmail.com", password: "123456")
admin = User.create!(name: "anon", email: "a@b.com", password: "123456")

puts "Creating Subjects"
CATEGORIES.each do |element|
  name = element[0]
  b = Subject.create(name: name)
  puts "Created Category #{b.name}"
end

goal_array = []
task_array = []

puts "Creating goals"

goal_array << Goal.create!(name: "Aprendiendo Chino deprisa", description: "artes", difficulty: "hard", subject: Subject.find_by_name("artes"), user: User.last,  progress: rand(0..50), votes: rand(0..200))
puts "The goal is #{Goal.last.name}, with #{Goal.last.difficulty} and belonging to category #{Goal.last.subject.name} "
puts

task_array << Task.create!(name: "Hablar una de las lenguas más importantes del mundo", completed: false, hours: rand(3..9), goal: Goal.last)
task_array << Task.create!(name: "Volverse experto en la materia", completed: false, hours: rand(3..9), goal: Goal.last)
task_array << Task.create!(name: "Memorizar más de 10.000 carácteres distintos", completed: false, hours: rand(3..9), goal: Goal.last)
task_array << Task.create!(name: "Leer y aprender la gramática", completed: false, hours: rand(3..9), goal: Goal.last)
task_array << Task.create!(name: "Practicar y mejorar", completed: false, hours: rand(3..9), goal: Goal.last)
task_array << Task.create!(name: "Aprender a escribir, leer y decir palabras simples", completed: false, hours: rand(3..9), goal: Goal.last)
task_array << Task.create!(name: "Aprender el alfabeto fonético", completed: false, hours: rand(3..9), goal: Goal.last)
puts "Created Task #{Task.last.name}"

goal_array << Goal.create!(name: "Escribe una novela", description: "", difficulty: "medium", subject: Subject.find_by_name("artes"), user: User.last,  progress: rand(0..50), votes: rand(0..200))
puts "The goal is #{Goal.last.name}, with #{Goal.last.difficulty} and belonging to category #{Goal.last.subject.name} "
puts

task_array << Task.create!(name: "Start writing for real (adher to the goal you set yourself in the beginning)", completed: false, hours: rand(3..9), goal: Goal.last)
task_array << Task.create!(name: "Write the outline for the third act", completed: false, hours: rand(3..9), goal: Goal.last)
task_array << Task.create!(name: "Finish the outline of the second act", completed: false, hours: rand(3..9), goal: Goal.last)
task_array << Task.create!(name: "Write the outline of the first half of the second act", completed: false, hours: rand(3..9), goal: Goal.last)
task_array << Task.create!(name: "Write the outline for the first act", completed: false, hours: rand(3..9), goal: Goal.last)
task_array << Task.create!(name: "Start writing (start at the beginning of a month!)", completed: false, hours: rand(3..9), goal: Goal.last)
task_array << Task.create!(name: "Plan your novel (Set an overall and daily word count goal...)", completed: false, hours: rand(3..9), goal: Goal.last)
dropbox = Link.create!(url: "https://ocw.mit.edu/courses/nuclear-engineering/22-15-essential-numerical-methods-fall-2014/lecture-notes/", name: "Books", description: "Hacking learning", goal: Goal.last)
drive = Link.create!(url: "https://ocw.mit.edu/courses/nuclear-engineering/22-15-essential-numerical-methods-fall-2014/lecture-notes/", name: "Course Notes", description: "Cool notes", goal: Goal.last)
youtube = Link.create!(url: "https://www.youtube.com/watch?v=UNP03fDSj1U", name: "Learn Faster", description: "Interesting video", goal: Goal.last)

goal_array << Goal.create!(name: "Curso de AI práctico", description: "", difficulty: "hard", subject: Subject.find_by_name("inteligencia-artificial"), user: User.last,  progress: rand(0..50), votes: rand(0..200))
puts "The goal is #{Goal.last.name}, with #{Goal.last.difficulty} and belonging to category #{Goal.last.subject.name} "
puts

todo7 = Task.create!(name: "Reconociendo perros y gatos", completed: false, hours: rand(3..9), goal: Goal.last)
todo6 = Task.create!(name: "Mejorando el clasificador de imagenes", completed: false, hours: rand(3..9), goal: Goal.last)
todo5 = Task.create!(name: "Entendiendo las convoluciones", completed: false, hours: rand(3..9), goal: Goal.last)
todo4 = Task.create!(name: "Estructura, Series de tiempo y modelos de lenguaje", completed: false, hours: rand(3..9), goal: Goal.last)
todo3 = Task.create(name: "Filtro colaborativo", completed: false, hours: rand(3..9), goal: Goal.last)
todo2 = Task.create(name: "Interpretando RNN's de 0", completed: false, hours: rand(3..9), goal: Goal.last)
todo = Task.create(name: "Resnets de 0", completed: false, hours: rand(3..9), goal: Goal.last)
dropbox = Link.create!(url: "https://ocw.mit.edu/courses/nuclear-engineering/22-15-essential-numerical-methods-fall-2014/lecture-notes/", name: "Books", description: "Hacking learning", goal: Goal.last)
drive = Link.create!(url: "https://ocw.mit.edu/courses/nuclear-engineering/22-15-essential-numerical-methods-fall-2014/lecture-notes/", name: "Course Notes", description: "Cool notes", goal: Goal.last)
youtube = Link.create!(url: "https://www.youtube.com/watch?v=UNP03fDSj1U", name: "Learn Faster", description: "Interesting video", goal: Goal.last)

goal_array << Goal.create!(name: "Biomateriales 3D", description: "", difficulty: "medium", subject: Subject.find_by_name("salud"), user: User.last,  progress: rand(0..50), votes: rand(0..200))
puts "The goal is #{Goal.last.name}, with #{Goal.last.difficulty} and belonging to category #{Goal.last.subject.name} "
puts

todo7 = Task.create!(name: "Land a backflip into a swimming pool", completed: false, hours: rand(3..9), goal: Goal.last)
todo6 = Task.create!(name: "Practice the back flip on the trampoline", completed: false, hours: rand(3..9), goal: Goal.last)
todo5 = Task.create!(name: "Land a backflip on the trampoline", completed: false, hours: rand(3..9), goal: Goal.last)
todo4 = Task.create!(name: "Practice the front flip on the trampoline", completed: false, hours: rand(3..9), goal: Goal.last)
todo3 = Task.create(name: "Land a front flip on the trampoline", completed: false, hours: rand(3..9), goal: Goal.last)
todo2 = Task.create(name: "Jump high enough to try it", completed: false, hours: rand(3..9), goal: Goal.last)
todo = Task.create(name: "Get a trampoline", completed: false, hours: rand(3..9), goal: Goal.last)
dropbox = Link.create!(url: "https://ocw.mit.edu/courses/nuclear-engineering/22-15-essential-numerical-methods-fall-2014/lecture-notes/", name: "Books", description: "Hacking learning", goal: Goal.last)
drive = Link.create!(url: "https://ocw.mit.edu/courses/nuclear-engineering/22-15-essential-numerical-methods-fall-2014/lecture-notes/", name: "Course Notes", description: "Cool notes", goal: Goal.last)
youtube = Link.create!(url: "https://www.youtube.com/watch?v=UNP03fDSj1U", name: "Learn Faster", description: "Interesting video", goal: Goal.last)

goal_array << Goal.create!(name: "Baterias de flujo en energía solar", description: "", difficulty: "medium", subject: Subject.find_by_name("estudio"), user: User.last,  progress: rand(0..50), votes: rand(0..200))
puts "The goal is #{Goal.last.name}, with #{Goal.last.difficulty} and belonging to category #{Goal.last.subject.name} "
puts

todo7 = Task.create!(name: "Learn regular adjectives", completed: false, hours: rand(3..9), goal: Goal.last)
todo6 = Task.create!(name: "Learn irregular past tense conjugation", completed: false, hours: rand(3..9), goal: Goal.last)
todo5 = Task.create!(name: "Learn regular past tense conjugation", completed: false, hours: rand(3..9), goal: Goal.last)
todo4 = Task.create!(name: "Learn irregular present tense conjugations", completed: false, hours: rand(3..9), goal: Goal.last)
todo3 = Task.create(name: "Learn regular nouns", completed: false, hours: rand(3..9), goal: Goal.last)
todo2 = Task.create(name: "Learn regular present tense conjugation", completed: false, hours: rand(3..9), goal: Goal.last)
todo = Task.create(name: "Memorize and practice some useful phrases", completed: false, hours: rand(3..9), goal: Goal.last)
dropbox = Link.create!(url: "https://ocw.mit.edu/courses/nuclear-engineering/22-15-essential-numerical-methods-fall-2014/lecture-notes/", name: "Books", description: "Hacking learning", goal: Goal.last)
drive = Link.create!(url: "https://ocw.mit.edu/courses/nuclear-engineering/22-15-essential-numerical-methods-fall-2014/lecture-notes/", name: "Course Notes", description: "Cool notes", goal: Goal.last)
youtube = Link.create!(url: "https://www.youtube.com/watch?v=UNP03fDSj1U", name: "Learn Faster", description: "Interesting video", goal: Goal.last)

goal_array << Goal.create!(name: "H20 contra la sobredosis homeopatica", description: "", difficulty: "hard", subject: Subject.find_by_name("salud"), user: User.last,  progress: rand(0..50), votes: rand(0..200))
puts "The goal is #{Goal.last.name}, with #{Goal.last.difficulty} and belonging to category #{Goal.last.subject.name} "
puts

todo = Task.create(name: "Analyze overall salud status", completed: false, hours: rand(3..9), goal: Goal.last)
todo2 = Task.create(name: "Figure out why you actually want to do it under a month", completed: false, hours: rand(3..9), goal: Goal.last)
todo3 = Task.create(name: "Run between 10-15 km 4 days a week", completed: false, hours: rand(3..9), goal: Goal.last)
todo4 = Task.create!(name: "Long distance running on sundays", completed: false, hours: rand(3..9), goal: Goal.last)
todo5 = Task.create!(name: "Alternate rest days with swimming or cycling", completed: false, hours: rand(3..9), goal: Goal.last)
todo6 = Task.create!(name: "Do a gel bath after every run and use a foam to massage your legs", completed: false, hours: rand(3..9), goal: Goal.last)
todo7 = Task.create!(name: "Set a crazy soundtrack and.... RUN!!!", completed: false, hours: rand(3..9), goal: Goal.last)
dropbox = Link.create!(url: "https://ocw.mit.edu/courses/nuclear-engineering/22-15-essential-numerical-methods-fall-2014/lecture-notes/", name: "Books", description: "Hacking learning", goal: Goal.last)
drive = Link.create!(url: "https://ocw.mit.edu/courses/nuclear-engineering/22-15-essential-numerical-methods-fall-2014/lecture-notes/", name: "Course Notes", description: "Cool notes", goal: Goal.last)
youtube = Link.create!(url: "https://www.youtube.com/watch?v=UNP03fDSj1U", name: "Learn Faster", description: "Interesting video", goal: Goal.last)

goal_array << Goal.create!(name: "Construye un Coche autónomo", description: "", difficulty: "hard", subject: Subject.find_by_name("estudio"), user: User.last,  progress: rand(0..50), votes: rand(0..200))
puts "The goal is #{Goal.last.name}, with #{Goal.last.difficulty} and belonging to category #{Goal.last.subject.name} "
puts

todo4 = Task.create!(name: "Set it up on your car and watch a movie", completed: false, hours: rand(3..9), goal: Goal.last)
todo3 = Task.create(name: "buy the hardware and GPU's", completed: false, hours: rand(3..9), goal: Goal.last)
todo2 = Task.create(name: "Complete udacity nanodegree", completed: false, hours: rand(3..9), goal: Goal.last)
todo = Task.create(name: "Learn Machine learning in Python", completed: false, hours: rand(3..9), goal: Goal.last)

goal_array << Goal.create!(name: "Visión por computador", description: "", difficulty: "easy", subject: Subject.find_by_name("inteligencia-artificial"), user: User.last,  progress: rand(0..50), votes: rand(0..200))
puts "The goal is #{Goal.last.name}, with #{Goal.last.difficulty} and belonging to category #{Goal.last.subject.name} "
puts

todo4 = Task.create!(name: "Clear your inbox at the end of the day", completed: false, hours: rand(3..9), goal: Goal.last)
todo3 = Task.create(name: "Reply to emails in the todo", completed: false, hours: rand(3..9), goal: Goal.last)
todo2 = Task.create(name: "Unsubscribe for spam and classify emails in folders", completed: false, hours: rand(3..9), goal: Goal.last)
todo = Task.create(name: "Archive all old email", completed: false, hours: rand(3..9), goal: Goal.last)

GOALS = [
    ["Ética y CRISPR", "salud", "medium"],
    ["Curso de Zeolitas", "otros", "medium"],
    ["Industria 4.0", "inteligencia-artificial", "easy"],
    ["Bio-hacking", "salud", "easy"],
    ["Aprendiendo a aprender", "estudio", "easy"],
    ["Domotica y robotica", "administración", "easy"],
    ["Técnicas de memorización", "Study", "medium"],
    ["Operaciones del corazón a válvula abierta", "medicina", "medium"],
    ["Nanotecnología contra el cáncer", "medicina", "medium"],
    ["Prototipado en Sketch", "Artes", "medium"],
    ["Metodología Product Manager", "Study", "medium"],
    ["Todo sobre Bitcoin", "finanzas", "medium"],
    ["Alimentación, sueño y bioritmos", "salud", "hard"]
]

puts "Creating goals"

GOALS.each do |goal|
  if !Subject.find_by_name(goal[1]).nil?
    subject = Subject.find_by_name(goal[1])
  else
    subject = Subject.find_by_name("otros")
  end

  c = Goal.create!(name: goal[0], description: "", difficulty: goal[2], subject: subject, user: User.last,  progress: rand(0..50), votes: rand(0..200))
  puts "The goal is #{c.name}, with #{c.difficulty} and belonging to category #{c.subject.name} "
  puts

  todo = Task.create!(name: "TODO", completed: false, hours: rand(5..7), goal: Goal.last)
  todo2 = Task.create!(name: "TODO", completed: false, hours: rand(2..6), goal: Goal.last)
  todo3 = Task.create!(name: "TODO", completed: false, hours: rand(0..8), goal: Goal.last)
  todo4 = Task.create!(name: "TODO", completed: false, hours: rand(1..4), goal: Goal.last)
  todo5 = Task.create!(name: "TODO", completed: false, hours: rand(0..3), goal: Goal.last)
  todo6 = Task.create!(name: "TODO", completed: false, hours: rand(1..9), goal: Goal.last)
  todo7 = Task.create!(name: "TODO", completed: false, hours: rand(0..5), goal: Goal.last)
  todo8 = Task.create!(name: "TODO", completed: false, hours: rand(3..69), goal: Goal.last)
  todo9 = Task.create!(name: "TODO", completed: false, hours: rand(3..69), goal: Goal.last)
  puts "Created Task #{todo.name} for #{todo.goal.name} "


  link = Link.create!(url: "https://www.youtube.com/watch?v=DLzxrzFCyOs", name: "Click me", description: "Interesting video", goal: Goal.last)
  puts "Created link #{link.url} for #{link.goal.name} "
end
