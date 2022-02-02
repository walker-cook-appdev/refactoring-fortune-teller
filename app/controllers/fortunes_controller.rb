class FortunesController < ApplicationController
  def horoscopes
    all_zodiacs = Zodiac.list
    @the_sign= params.fetch("the_sign")
    @this_zodiac = all_zodiacs.fetch(@the_sign.to_sym)
    @horoscope = @this_zodiac.fetch(:horoscope)
    @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)
      
      @array_of_numbers.push(another_number)
    end

    render({ :template => "fortune_templates/dynamic_fortune.html.erb" })
  end
end

