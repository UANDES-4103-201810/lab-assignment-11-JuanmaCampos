FactoryBot.define do
  
	factory :user do
		username "juanma"
		email "jcampos@miuandes.cl"
		password "abc12345"
	end
	factory :message do
		user_id 1
		date '2005-05-05'
		content "hola"
	end
# Add other factories in here
end
