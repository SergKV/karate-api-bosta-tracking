@ignore
Feature: re-usable feature validate single shipment

Background:
    * url 'https://tracking.bosta.co/shipments/track'

Scenario:
    Given path trackingNumber
    When method get
    Then status 200
    * match response.provider == provider
    * match response.TrackingNumber == trackingNumber
    * match response.TrackingURL contains 'bosta.co/tracking-shipment/?track_num=' + trackingNumber
    * match response.isEditableShipment == isEditableShipment
    * match response.isOnlinePaymentFeatureEnabled == isOnlinePaymentFeatureEnabled

