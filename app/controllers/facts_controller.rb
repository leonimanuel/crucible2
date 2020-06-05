class FactsController < ApplicationController
	def create
		binding.pry
		Fact.create(
			content: params["selected_text"],
			url: params["selection_url"],
			user: User.find(1)
		)
	end

	def index
		facts = Fact.all
		render json: FactSerializer.new(facts).to_serialized_json
	end
end
