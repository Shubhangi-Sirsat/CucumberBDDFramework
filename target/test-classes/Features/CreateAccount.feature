
Feature: User Registration
  As a potential customer
  I want to create account for a magento 
  So I can shop conveniently
  
   @CreateAccountValid
  Scenario Outline: 
    Given the user is on magneto homepage
    When user clicks on the create account page
    Then user enters personal information "<FirstName>" "<LastName>"
    Then user enters sign in information "<Email>" "<Password>" "<ConfirPassword>"
    Then user clicks create an account button
    
   Examples:
   
  |FirstName| LastName | Email                | Password        | ConfirPassword   |
  |Neha     | Warma    | nehawarma@gmail.com  |@@Nehawarma24$$  | @@Nehawarma24$$  |
  |Sneha    | Warma    | snehawarma@gmail.com |@@Snehawarma24$$ | @@Snehawarma24$$ |
  |Nishha   | Warma    | nishawarma@gmail.com |@@Nishawarma24$$ | @@Nishawarma24$$ |
  |Leha     | Warma    | Lehawarma@gmail.com  |@@Lehawarma24$$  | @@Lehawarma24$$  |
  |Deha     | Warma    | Dehawarma@gmail.com  |@@Dehawarma24$$  | @@Dehawarma24$$  |
 
    
    @CreateInvalidAccount
 Scenario Outline: 
    Given the user is on magneto homepage
    When user clicks on the create account page
    Then user enters personal information "<FirstName>" "<LastName>"
    Then user enters invalid sign in information "<Email>" "<Password>" "<ConfirPassword>"
    Then user clicks create an account button
    
   Examples:
   |FirstName| LastName | Email                | Password        | ConfirPassword   |
  |Neha     | Warma     | nehawarma            |Nehawarma24      | @@Nehawarma24$$  |
  |Sneha    | Warma     | snehawarma@gmail.com |@@Snehawarma24$$ | @@Snehawarma24$$ |
  |Nishha   | Warma     | nishawarma@gmail     |@@a24$$           | @@a24$$           | 
  |Leha     | Warma     | n@gmai.com           |@@Lehawarma24$$  | @@Lehawarma24$$  |
   
  
  