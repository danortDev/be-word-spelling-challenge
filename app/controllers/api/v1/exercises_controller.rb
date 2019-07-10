class Api::V1::ExercisesController < ApplicationController

  def fisher_yates(array)
    counter = array.length - 1
    while counter > 0
      random_index = rand(counter)
      array[counter], array[random_index] = array[random_index], array[counter]
      counter -= 1
    end

    array
  end

  # GET /exercises
  def index
    @words = Word.order("RANDOM()").limit(10)
    exercises = @words.map { |word| {
      :word => word.text,
      :scrambled => fisher_yates(word.text.split("")).join("")
    }}
    render json: exercises
  end
end
