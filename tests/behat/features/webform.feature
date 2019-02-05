@tide
Feature: Webform "Event Submission" exists.

  Ensure that the 'Content Rating' webform exists

  @api @nosuggest
  Scenario: The form has the expected fields (and labels where we can use them).
    Given I am logged in as a user with the "administer webform" permission
    When I visit "admin/structure/webform"
    Then I should see the link "Event Submission"

    When I click "Event Submission"
    Then I see field "Name of event"
    And I see field "Category"
    And I see field "Location"
    And I see field "Description"
    And I see field "Requirements"
    And I see field "Open date"
    And I see field "Close date"
    And I see field "Free"
    And I see field "Price From"
    And I see field "Price To"
    And I see field "Website URL for event information"
    And I see field "Website URL for booking"
    And I see field "Contact person"
    And I see field "Contact email address"
    And I see field "Contact telephone number"
    And I see field "Contact I have read and understand how Department of Premier and Cabinet stores information."
    And I should see the button "Submit"

  @api @nosuggest
  Scenario: Check for required form fields.
    Given I am an anonymous user
    When I visit "form/tide-event-submission"
    Then I should see the heading "Event Submission" in the "header" region
    And I press "Submit" in the "content" region
    And save screenshot
    And I see the "#edit-name-of-event" element with the "required" attribute set to "required" in the "content" region
    And I see the "#edit-category" element with the "required" attribute set to "required" in the "content" region
    And I see the "#edit-open-date" element with the "required" attribute set to "required" in the "content" region
    And I see the "#edit-close-date" element with the "required" attribute set to "required" in the "content" region
    And I see the "#edit-contact-person" element with the "required" attribute set to "required" in the "content" region
    And I see the "#edit-contact-email-address" element with the "required" attribute set to "required" in the "content" region
    And I see the "#edit-contact-telephone-number" element with the "required" attribute set to "required" in the "content" region
