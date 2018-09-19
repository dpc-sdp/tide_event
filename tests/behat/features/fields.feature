@tide
Feature: Fields for News content type

  Ensure that Event content has the expected fields.

  @api
  Scenario: The content type has the expected fields (and labels where we can use them).
    Given I am logged in as a user with the "create event content" permission
    When I visit "node/add/event"
    And save screenshot
    Then I see field "Title"
    And I should see an "input#edit-title-0-value.required" element

    And I see field "Body"
    And I should see a "textarea#edit-body-0-value" element
    And I should see a "textarea#edit-body-0-value.required" element

    And I see field "Topic"
    And I should see an "input#edit-field-topic-0-target-id" element
    And I should not see an "input#edit-field-topic-0-target-id.required" element

    And I see field "Event Category"
    And I should see an "input#edit-field-event-category-0-target-id" element
    And I should not see an "input#edit-field-event-category-0-target-id.required" element

    And I see field "Audience"
    And I should see an "input#edit-field-audience-0-target-id" element
    And I should not see an "input#edit-field-audience-0-target-id.required" element

    And I see field "Introduction Text"
    And I should see an "textarea#edit-field-news-intro-text-0-value" element
    And I should not see an "textarea#edit-field-news-intro-text-0-value.required" element

    And I see field "Description"
    And I should see a "textarea#edit-field-event-description-0-value" element
    And I should not see a "textarea#edit-field-event-description-0-value.required" element

    And I see field "Show Social Sharing?"
    And I should see an "input#edit-field-show-social-sharing-value" element
    And I should not see an "input#edit-field-show-social-sharing-value.required" element

    And I see field " Show Contact Us?"
    And I should see an "input#edit-field-landing-page-show-contact-value" element
    And I should not see an "input#edit-field-landing-page-show-contact-value.required" element

    And the "#edit-field-featured-image" element should contain "Featured Image"
    And I should see an "input#edit-field-featured-image-entity-browser-entity-browser-open-modal" element

