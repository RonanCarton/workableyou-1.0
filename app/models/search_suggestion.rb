class SearchSuggestion < ActiveRecord::Base
  attr_accessible :popularity, :term
  def index
    render json: %w[foo bar]
  end
end
