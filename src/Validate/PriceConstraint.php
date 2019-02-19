<?php

namespace Drupal\tide_event\Validate;

use Drupal\Core\Field\FieldException;
use Drupal\Core\Form\FormStateInterface;

/**
 * Form API callback. Validate element value.
 */
class PriceConstraint {
  /**
   * Validates given element.
   *
   * @param array              $element      The form element to process.
   * @param FormStateInterface $formState    The form state.
   * @param array              $form The complete form structure.
   */
  public static function validate(array &$element, FormStateInterface $formState, array &$form) {
    $error = FALSE;
    $webformKey = $element['#webform_key'];
    $price_from_value = $formState->getValue('price_from');
    $price_to_value = $formState->getValue($webformKey);

    error_log("Price From: " . $price_from_value, 0);
    error_log("Price To: " . $price_to_value, 0);

    // Skip empty unique fields or arrays (aka #multiple).
    if ($price_to_value === '' || is_array($price_to_value)) {
      return;
    }

    if($price_to_value < $price_from_value) {
      $error = TRUE;
    }
    // do some validation here...
    // and set some error variable, e.g. $error

    if ($error) {
      if (isset($element['#title'])) {
        $tArgs = array(
          '%name' => empty($element['#title']) ? $element['#parents'][0] : $element['#title'],
          '%value' => $price_to_value,
        );
        $formState->setError(
          $element,
          t('The %name value "%value" should be greater or equal to "Price From" value. Please use a different amount.', $tArgs)
        );
      } else {
        $formState->setError($element);
      }
    }
  }
}
