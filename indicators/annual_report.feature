Feature: Annual report

  Scenario: Annual report is present
    Given an organisation file
     then `document-link/category[@code="B01"]` should be present
