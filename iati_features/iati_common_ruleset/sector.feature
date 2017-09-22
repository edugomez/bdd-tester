Feature: Sector

  Scenario Outline: sector element is expected
    Given an IATI activity
     then either `sector` or `transaction/sector` should be present

  Scenario Outline: transaction-sector element is not expected
    Given `sector` is present
     then `transaction/sector` should not be present
