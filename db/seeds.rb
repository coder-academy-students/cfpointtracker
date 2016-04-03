students = Student.create([{name: 'Alex', total_points: 0},
													{name: 'Anne', total_points: 0},
													{name: 'Arun', total_points: 0},
													{name: 'Arunava', total_points: 0},
													{name: 'Aza', total_points: 0},
													{name: 'Beston', total_points: 0},
													{name: 'Heath', total_points: 0},
													{name: 'Fin', total_points: 0},
													{name: 'James W', total_points: 0},
													{name: 'James V', total_points: 0},
													{name: 'Jessica', total_points: 0},
													{name: 'Justin', total_points: 0},
													{name: 'Mark', total_points: 0},
													{name: 'Marshall', total_points: 0},
													{name: 'Napoleon', total_points: 0},
													{name: 'Neil', total_points: 0},
													{name: 'Peter', total_points: 0},
													{name: 'Sheena', total_points: 0},
													{name: 'Wendy', total_points: 0}])


awards = Award.create([{name: 'Encouragement', value: 1},{name: 'Effort', value: 2},{name: 'Excellence',value: 3}])
disciplines = Discipline.create([{name: 'Agility', icon: 'rocket'},{name: 'Code Quality', icon: 'tachometer'},{name: 'Collaboration', icon: 'cogs'},{name: 'Community', icon: 'users'},{name: 'Leadership', icon: 'star'}])
pete = User.create email: 'pete@coderfactory.com', password: 'codingisfunPA'
pete.add_role :admin
ruegen = User.create email: 'ruegen@coderfactory.com', password: 'codingisfunRA'
ruegen.add_role :admin
jamie = User.create email: 'jamie@coderfactory.com', password: 'codingisfunJC'
jamie.add_role :admin
aaron = User.create email: 'aaron@coderfactory.com', password: 'codingisfunAH'
aaron.add_role :admin
trent = User.create email: 'trent@coderfactory.com', password: 'codingisfunTS'
trent.add_role :admin
