Feature: Calculate stock productivity
	Scenario: Calculatte prices
		Given: The web applications runs on Heroku
		When: I open the application url
		Then: I must see the front page with application title "Stock productivity calculator"
		When: I press button "Enter new stock"
		And: I must be able to enter the following values:
		| Stock name | Company XYZ | required string  |
		| Price      | 2.00        | required decimal |
		| Quantity   | 200         | required integer |
		| Percentage | 3.00        | required decimal |
		| Years      | 10          | required integer | 
		And: I press button "Calculate"
		Then: I must see the page with title "Calculation result"
		And: I must see the original input data:
	    | Stock name | Company XYZ | 
	    | Price      | 2.00        |
	    | Quantity   | 200         |
	    | Percentage | 3.00        |
	    | Years      | 10          |