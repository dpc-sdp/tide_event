@tide
Feature: Fields for Event content type

  Ensure that Event content has the expected fields.

  @api
  Scenario: The content type has the expected fields (and labels where we can use them).
    Given I am logged in as a user with the "create event content" permission
    When I visit "node/add/event"
    And save screenshot
    Then I see field "Title"
    And I should see an "input#edit-title-0-value.required" element

    And the "#edit-field-featured-image" element should contain "Featured Image"
    And I should see an "input#edit-field-featured-image-entity-browser-entity-browser-open-modal" element

    And I see field "Summary"
    And I should see a "textarea#edit-field-landing-page-summary-0-value" element
    And I should see a "textarea#edit-field-landing-page-summary-0-value.required" element

    And I should see text matching "Event Details"
    And I should see a "textarea#edit-field-landing-page-summary-0-value" element
    And I should see a "input#edit-field-event-details-0-subform-field-date-not-applicable-value" element
    And I should see a "input#edit-field-event-details-0-subform-field-paragraph-date-range-0-value-date" element
    And I should see a "input#edit-field-event-details-0-subform-field-paragraph-date-range-0-end-value-date" element
    And I should see a "input#edit-field-event-details-0-subform-field-paragraph-event-schedule-0-value" element
    And I should see a "input#edit-field-event-details-0-subform-field-paragraph-event-duration-0-value" element
    And I should see a "select#edit-field-event-details-0-subform-field-paragraph-attendence-mode" element
    And I should see a "input#edit-field-event-details-0-subform-field-event-availability-0-value" element
    And I should see a "input#edit-field-event-details-0-subform-field-paragraph-event-price-from-0-value" element
    And I should see a "input#edit-field-event-details-0-subform-field-paragraph-event-capacity-0-value" element

    And I should see text matching "Event Requirements"
    And I should see a "input#edit-field-event-details-0-subform-field-event-requirements-0-target-id" element

    And I should see an "input#edit-field-is-event-series-value" element

    And I see field "Audience"
    And I should see an "input#edit-field-audience-0-target-id" element

    And I see field "Event Category"
    And I should see an "input#edit-field-event-category-0-target-id" element
    And I should see an "input#edit-field-event-category-0-target-id.required" element

    And I see field "Show Content Rating?"
    And I should see an "input#edit-field-show-content-rating-value" element

    And I see field "Topic"
    And I should see an "input#edit-field-topic-0-target-id" element
    And I should see an "input#edit-field-topic-0-target-id.required" element

    And I see field "Tags"
    And I should see an "input#edit-field-tags-0-target-id" element
    And I should not see an "input#edit-field-tags-0-target-id.required" element

    And I see field "Body"
    And I should see a "textarea#edit-body-0-value" element
    And I should see a "textarea#edit-body-0-value.required" element
    
    And I see field "Display Social Sharing?"
    And I should see an "input#edit-field-show-social-sharing-value" element
    And I should not see an "input#edit-field-show-social-sharing-value.required" element

    And I should see text matching "External Link"
    And I should see text matching "URL"
    And I should see an "input#edit-field-node-link-0-uri" element
    And I should not see an "input#edit-field-node-link-0-uri.required" element

    And I should see text matching "CTA Text"
    And I should see an "input#edit-field-event-cta-text-0-value" element
    And I should not see an "input#edit-field-event-cta-text-0-value.required" element
