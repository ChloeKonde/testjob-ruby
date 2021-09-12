# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# projects = Project.create([{title: 'Семья'}, {title:'Работа'}, {title:'Прочее'}])
Project.create(title: 'Семья')
Project.create(title: 'Работа')
Project.create(title: 'Прочее')
Todo.create(text:"Купить молоко", isCompleted:false, project_id:1) 
Todo.create(text:"Заплатить за квартиру", isCompleted:true, project_id:1)
Todo.create(text:"Забрать обувь из ремонта", isCompleted:false, project_id:1)
Todo.create(text:"Заменить масло в двигателе до 23 апреля", isCompleted:false, project_id:1)
Todo.create(text:"Отправить письмо бабушке", isCompleted:false, project_id:1)
Todo.create(text:"Отправить документы", isCompleted:true, project_id:2)
Todo.create(text:"test", isCompleted:false, project_id:3)