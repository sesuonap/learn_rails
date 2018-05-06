class Api::ExamplesController < ApplicationController
  def fortune_action
    fortunes = [
                '... you will die',
                '... you will win the lottery',
                '... you will get crushed by a falling anvil'
                ]

    @fortune = fortunes.sample
    render 'fortune.json.jbuilder'
  end 

  def lotto_action
    possible_numbers = (1..60).to_a
    @magic_numbers = []
    6.times { @magic_numbers << possible_numbers.shuffle!.pop }
    @magic_numbers = @magic_numbers.join(', ')
    render 'lotto_view.json.jbuilder'
  end 


end
