require 'thor'
require 'dotenv/load'
require 'http'

class GithubCLI < Thor 
  GITHUB_URL = "https://api.github.com"
  GITHUB_USER = "acastemoreno"
  GITHUB_TOKEN = ENV["Github_token"]

  desc "create [repo_name]", "Creates a repository with the provided name"
  def create(repo_name)
    response = HTTP.headers(:accept => "application/json")
      .auth("token #{GITHUB_TOKEN}")
      .post(GITHUB_URL + "/user/repos", :json => { 
        "name" => repo_name,
        "description" => "Creado mediante Github API"
      })
    p response.status.success? ? "Repo Creado" : "Repo no creado"
  end 

  desc "update [repo_name] [new_repo_name]", "Updates the \"repo name\" repository and change it's name to \"new repo name\""
  def update(repo_name, new_repo_name)
    response = HTTP.headers(:accept => "application/json")
      .auth("token #{GITHUB_TOKEN}")
      .patch(GITHUB_URL + "/repos/#{GITHUB_USER}/#{repo_name}", :json => {
        "name" => new_repo_name
      })
      p response.status.success? ? "Repo Modificado" : "Repo no modificado"
  end

  desc "delete [repo_name]", "Deletes \"repo name\" repository"
  def delete(repo_name)
    response = HTTP.headers(:accept => "application/json")
      .auth("token #{GITHUB_TOKEN}")
      .delete(GITHUB_URL + "/repos/#{GITHUB_USER}/#{repo_name}")
    p response.status.success? ? "Repo Eliminado" : "Repo no eliminado"
  end

  def method_missing(_method, *args)
    puts "Wrong command"
    exit
  end

end

GithubCLI.start(ARGV)