# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Grade.create(display_name: '1st', grade: 1, id: 1);
Grade.create(display_name: '2nd', grade: 2, id: 2);
Grade.create(display_name: '3rd', grade: 3);
Grade.create(display_name: '4th', grade: 4);
Grade.create(display_name: '5th', grade: 5);
Grade.create(display_name: '6th', grade: 6);


Teacher.create(name: 'Mrs. P Smith', grade_id: 2)
Teacher.create(name: 'Mrs. Vaughn', grade_id: 2)
Teacher.create(name: 'Mrs. Dolan', grade_id: 2)
Teacher.create(name: 'Mrs. C Smith', grade_id: 2)
Teacher.create(name: 'Mrs. Fitzgerald', grade_id: 2)

(1..52).each do |week|
    Week.create(week_number: week, year: 2017, id: week)

end



list = SpellingList.create(week_id: 49, grade_id: 2, id: 1 )

SpellingWord.create(word:'first', spelling_list: list)
SpellingWord.create(word:'hurt', spelling_list: list)
SpellingWord.create(word:'person', spelling_list: list)
SpellingWord.create(word:'Turn', spelling_list: list)
SpellingWord.create(word:'Stir', spelling_list: list)
SpellingWord.create(word:'burn', spelling_list: list)
SpellingWord.create(word:'girl', spelling_list: list)
SpellingWord.create(word:'shirt', spelling_list: list)
SpellingWord.create(word:'letter', spelling_list: list)
SpellingWord.create(word:'mother', spelling_list: list)
SpellingWord.create(word:'purple', spelling_list: list)
SpellingWord.create(word:'turkey', spelling_list: list)
SpellingWord.create(word:'return', spelling_list: list)
SpellingWord.create(word:'shirt', spelling_list: list)
SpellingWord.create(word:'first', spelling_list: list)
SpellingWord.create(word:'burn', spelling_list: list)
SpellingWord.create(word:'person', spelling_list: list)
SpellingWord.create(word:'mother', spelling_list: list)
SpellingWord.create(word:'dirty', spelling_list: list)
SpellingWord.create(word:'hammer', spelling_list: list)
SpellingWord.create(word:'Saturday', spelling_list: list)
SpellingWord.create(word:'different', spelling_list: list)
SpellingWord.create(word:'returning', spelling_list: list)
SpellingWord.create(word:'whisper', spelling_list: list)
SpellingWord.create(word:'thirty', spelling_list: list)
SpellingWord.create(word:'direction', spelling_list: list)
SpellingWord.create(word:'exercise', spelling_list: list)
SpellingWord.create(word:'confirm', spelling_list: list)
SpellingWord.create(word:'perfume', spelling_list: list)
SpellingWord.create(word:'squirm', spelling_list: list)