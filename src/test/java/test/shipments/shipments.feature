Feature: Bosta Shipment Tracking

Background:
    * url 'https://tracking.bosta.co/shipments/track'
    * def validCreator = read('valid-shipment-validator.feature')
    * def validShipments = read('classpath:test/resources/data/valid-shipments.json')
    * def invalidCreator = read('invalid-shipment-validator.feature')
    * def invalidShipments = read('classpath:test/resources/data/invalid-shipments.json')
    * def missingShipmentResponse = read('classpath:test/resources/data/missing-shipment-response.json')


Scenario: Verify response for multiple existing valid shipments
    * def result = call validCreator validShipments

Scenario: Verify response for multiple existing invalid shipments
    * def result = call invalidCreator invalidShipments

Scenario: Verify response for invalid HTTP Method
    Given path validShipments[0].trackingNumber
    When method post
    Then status 404

Scenario: Verify response for special characters tracking number
    Given path "%&/()=?"
    When method get
    Then status 404

Scenario: Verify response for empty tracking number
    Given path ''
    When method get
    Then status 404