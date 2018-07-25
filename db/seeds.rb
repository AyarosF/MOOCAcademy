# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Création d'un premier cours pour tester et d'une première leçon prenant pour id celui du cours
Course.create(title: "Maths", description: "Les mathématiques, c'est fantastique")
Lesson.create(title: "Théorème de Pythagore", body: "Si ABC est un triangle rectangle en A, alors BC² =AB² + AC²", course_id: 1)

#Création de plusieurs cours en faisant un array et en prenant l'un après l'autre chaque élément pour le mettre en titre
subjects = ["SVT", "Français", "Anglais", "Allemand", "Physique-Chimie", "Informatique", "Histoire", "Espagnol", "Botanique", "Droit", "Philosophie"]
subjects.each do |subject|
  Course.create(title: "#{subject}", description: "Inscrivez-vous à ce cours formidable, du fun en perspective !" )
end

for i in 2..50
  Lesson.create(title: "Leçon #{i}", body: "Grâce à moi vous allez apprendre plein de choses", course_id: rand(12))
end
