class Canditate
  attr_accessor :years_of_experience, :github_points, :languages_worked_with, :applied_recently, :age

  def initialize
    @years_of_experience = 4
    @github_points = 293
    @languages_worked_with = ['C', 'Ruby', 'Python', 'Clojure']
    @applied_recently = false
    @age = 26
  end
  
end

candidate = Canditate.new

ruby_exp = candidate.languages_worked_with.any?{ |language| language == 'Ruby' }
years_exp = candidate.years_of_experience >= 2
gh_points = candidate.github_points >= 500
not_young = candidate.age > 15
not_recently = !(candidate.applied_recently)

is_an_experienced_programmer = ruby_exp && (years_exp || gh_points) && not_young && not_recently
puts is_an_experienced_programmer