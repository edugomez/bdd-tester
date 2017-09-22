Feature: Mandatory elements

  Scenario Outline: activity start date planned or actual expected
    Given an IATI activity
     then either `activity-date[@type="1"] | activity-date[@type="start-planned"]` or `activity-date[@type="2"] | activity-date[@type="start-actual"]` should be present

  Scenario Outline: participating organisation reference text or ref expected
    Given `participating-org` is present
     then either `participating-org/@ref` or `participating-org/narrative/text()` should be present
