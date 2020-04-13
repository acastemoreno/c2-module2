ruby_exp = candidate.languages_worked_with.any?{ |language| language == 'Ruby' }
years_exp = candidate.years_of_experience >= 2
gh_points = candidate.github_points >= 500
not_young = candidate.age > 15
not_recently = !(candidate.applied_recently?)

is_an_experienced_programmer = ruby_exp && (years_exp || gh_points) && not_young && not_recently