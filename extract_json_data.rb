require 'json'

class ClaimsAnalyzer
  # Task 1 : Part A - Extract Related Claims
  def extract_related_claims(claim_id, json_data)
	  find_claim_by_id(claim_id, parsed_data(json_data))
  end

  # Task 1 : Part B - Find the maximum claim amount in the past 'n' days
  def find_max_claim_amount_in_days(patient_id, days_window, json_data)
	# Implementation here (to be filled by candidate)
  patient = find_patient_by_id(patient_id, parsed_data(json_data))

  past_n_days_claims = patient['claims'].select { |claim| (DateTime.now - DateTime.parse(claim['date'])).to_i < days_window }

	past_n_days_claims.map{ |claim| claim['amount'] }.max
  end

  def parsed_data(json_data)
    JSON.parse(json_data)
  end

  def find_claim_by_id(claim_id, json_data)
    all_claims(json_data).select { |claim| claim['id'] == claim_id }
  end

  def find_patient_by_id(patient_id, json_data)
    json_data['patients'].find { |patient| patient['id'] == patient_id }
  end

  def all_claims(json_data)
    json_data['patients'].map{ |patient| patient['claims'] }.flatten
  end
end


json_string = '{
  "patients": [
  {
    "id": "P001",
    "claims": [
      {"id": "C001", "amount": 100.0, "billingCode": "B001", "date": "2024-01-10"},
      {"id": "C002", "amount": 200.0, "billingCode": "B001", "date": "2024-01-15"},
      {"id": "C003", "amount": 150.0, "billingCode": "B002", "date": "2024-01-20"}
    ]
  },
  {
    "id": "P002",
    "claims": [
      {"id": "C001", "amount": 600.0, "billingCode": "B001", "date": "2024-01-10"},
      {"id": "C005", "amount": 200.0, "billingCode": "B001", "date": "2024-01-15"},
      {"id": "C006", "amount": 150.0, "billingCode": "B002", "date": "2024-01-20"}
    ]
  }

  ]
}'

obj = ClaimsAnalyzer.new

obj.extract_related_claims("C001", json_string)

obj.find_max_claim_amount_in_days("P001", 365, json_string)