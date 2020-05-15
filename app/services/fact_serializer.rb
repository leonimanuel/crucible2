class FactSerializer
	def initialize(fact_object)
		@fact = fact_object
	end

	def to_serialized_json
		@fact.to_json
	end
end