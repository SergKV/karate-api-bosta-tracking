Feature: Bosta Shipment Tracking

Background:
    * url 'https://tracking.bosta.co/shipments/track'
    * def creator = read('shipment-validate.feature')
    * def shipments = read('classpath:test/resources/data/shipments.json')
    * def missingShipment = read('classpath:test/resources/data/missing-shipment.json')
    * def missingShipmentResponse = read('classpath:test/resources/data/missing-shipment-response.json')


Scenario: Verify response for multiple existing shipments
    * def result = call creator shipments


Scenario: Verify response for a non-existing shipment
    Given path missingShipment.trackingNumber
    When method get
    Then status 404
    * match response.error == missingShipmentResponse.error
    * match response.status == missingShipmentResponse.status


Scenario: Verify status for absent tracking number
    Given path ''
    When method get
    Then status 404

Scenario: Verify response for invalid tracking number
    Given path 'absd1234'
    When method get
    Then status 404
    * match response.error == missingShipmentResponse.error
    * match response.status == missingShipmentResponse.status

Scenario: Verify response for invalid HTTP Method
    Given path shipments[0].trackingNumber
    When method post
    Then status 404