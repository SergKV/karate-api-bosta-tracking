@ignore
Feature: re-usable feature validate single invalid shipment

Background:
    * url 'https://tracking.bosta.co/shipments/track'

Scenario:
    Given path trackingNumber
    When method get
    Then print testName
    And status 404
    * match response.error == error
    * match response.status == status