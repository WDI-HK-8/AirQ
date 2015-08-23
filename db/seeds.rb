# Examples:
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
BusinessUser.create([
  {name: 'Private Banking',
    phone_number: 12345678,
    email: 'private_banking@hsbc.com',
    password: '**SECRET**'},
  {name: 'Investment Services',
    phone_number: 98765432,
    email: 'invest@hsbc.com',
    password: '**SECRET2**'},
  {name: 'Trustee Services',
    phone_number: 10101010,
    email: 'trustee@hsbc.com',
    password: '**SECRET3**'}
  ])

Company.create(
  name: 'HSBC',
  industry: 'Banking'
  )

IndividualUser.create(
  first_name: 'Harry',
  last_name: 'GG',
  email: 'harry.gg@gmail.com',
  phone_number: 27134567,
  password: 'harry_is_a_ninja'
  )

Desk.create(
  service_type: 'Wealth Management (Platinum Member)'
  )
