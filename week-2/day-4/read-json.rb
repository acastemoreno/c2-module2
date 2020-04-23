require 'json'
require "awesome_print"

class Task
  attr_reader :name, :who, :dueDate, :done

  def initialize(hash)
    @name = hash["task"]
    @who = hash["who"]
    @dueDate = hash["dueDate"]
    @done = hash["done"]
  end

  def to_s
    "taks '#{@name}' that own to '#{@who}'"
  end

  def inspect
    to_s
  end
end

def read_json
  array = []
  File.open("read-json.json", "r") do |file|
    array = JSON.parse(file.read)
  end
  array
  .map {|item| p Task.new(item)}
end

read_json()