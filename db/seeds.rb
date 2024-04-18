# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

professionals = Professional.create([
  { name: 'Selton Melo' },
  { name: 'Felipe Moura' },
  { name: 'Paulo Coelho' },
  { name: 'João Neto' },
  { name: 'Claudio Braga' },
  { name: 'Ricardo Almeida' },
])

expertises = Expertise.create([
  { name: 'Pediatria' },
  { name: 'Ginecologia' },
  { name: 'Dermatologia' },
  { name: 'Cardiologia' },
  { name: 'Ortopedia' },
  { name: 'Oftalmologia' },
])


appointments = Appointment.create([
  { start_at: '2024-04-17 22:54:43', end_at: '2024-04-17 23:54:43', professional: professionals.second, expertise: Expertise.second },
  { start_at: '2024-04-17 22:54:43', end_at: '2024-04-17 23:54:43', professional: professionals.first, expertise: Expertise.first },
  { start_at: '2024-04-17 22:54:43', end_at: '2024-04-17 23:54:43', professional: professionals.third, expertise: Expertise.third },
  { start_at: '2024-04-17 22:54:43', end_at: '2024-04-17 23:54:43', professional: professionals.fourth, expertise: Expertise.fourth },
  { start_at: '2024-04-17 22:54:43', end_at: '2024-04-17 23:54:43', professional: professionals.fifth, expertise: Expertise.fifth },
  { start_at: '2024-04-17 22:54:43', end_at: '2024-04-17 23:54:43', professional: professionals.last, expertise: Expertise.last },
])
