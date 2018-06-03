class GameController < ApplicationController
  def index
    render html:  ['orzeł', 'reszka'].sample
  end
end