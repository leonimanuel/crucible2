class FactsController < ApplicationController
	def create
		Fact.create(
			content: params["selected_text"],
			url: params["selection_url"],
			user: User.find(1)
		)
		binding.pry
	end

	def index
		facts = Fact.all
		render json: FactSerializer.new(facts).to_serialized_json
	end
end
