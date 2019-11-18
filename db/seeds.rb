# frozen_string_literal: true
user = User.create!(email: 'example@example.com', password: 'password')
other_user = User.create!(email: 'other@example.com', password: 'password')

Media.create!(name: 'Article')
Media.create!(name: 'Book')
Media.create!(name: 'Podcast')
Media.create!(name: 'Talk')

idea1 =
  user.ideas.create!(
    summary:
      'The reason software design is necessary is because change is inevitable.',
  )
idea2 =
  user.ideas.create!(
    summary: 'Refactoring in small steps allows you to make changes gradually.',
  )
other_idea = other_user.ideas.create!(summary: 'Vampires are sparkly.')

other_author = other_user.authors.create(name: 'Stephanie Meyer')
other_source = other_author.sources.create!(title: 'Twilight')
other_source.quotes.create!(idea: other_idea, text: '"Say it." "Vampire."')

sandi = user.authors.create!(name: 'Sandi Metz')
pood = sandi.sources.create!(title: 'Practical Object-Oriented Design in Ruby')
pood.quotes.create!(
  idea: idea1,
  text:
    'Unfortunately, something will change. It always does. The customers didn’t know what they wanted, they didn’t say what they meant. You didn’t understand their needs, you’ve learned how to do something better. Even applications that are perfect in every way are not stable. The application was a huge success, now everyone wants more. Change is unavoidable. It is ubiquitous, omnipresent, and inevitable.',
)

fowler = user.authors.create!(name: 'Martin Fowler')
refactoring = fowler.sources.create!(title: 'Refactoring')
refactoring.quotes.create!(
  idea: idea2,
  text:
    'Refactoring is all about applying small behavior-preserving steps and making a big change by stringing together a sequence of these behavior-preserving steps. Each individual refactoring is either pretty small itself or a combination of small steps. As a result, when I’m refactoring, my code doesn’t spend much time in a broken state, allowing me to stop at any moment even if I haven’t finished.',
)
refactoring.quotes.create!(
  idea: idea2,
  text:
    'I’m reluctant to have a team do dedicated refactoring. Often, a useful strategy is to agree to gradually work on the problem over the course of the next few weeks. Whenever anyone goes near any code that’s in the refactoring zone, they move it a little way in the direction they want to improve. This takes advantage of the fact that refactoring doesn’t break the code—each small change leaves everything in a still-working state.',
)
