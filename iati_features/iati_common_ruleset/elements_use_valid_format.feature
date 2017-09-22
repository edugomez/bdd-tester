Feature: Elements use a valid format

  Scenario Outline: IATI identifier regex
    Given `iati-identifier/text()` is present
     then every `iati-identifier/text()` should match the regex `^[^\/\&\|\?]+$`

  Scenario Outline: reporting organisation reference regex
    Given `reporting-org/@ref` is present
     then every `reporting-org/@ref` should match the regex `^[^\/\&\|\?]+$`

  Scenario Outline: participating organisation reference regex
    Given `participating-org/@ref` is present
     then every `participating-org/@ref` should match the regex `^[^\/\&\|\?]+$`

  Scenario Outline: provider organisation reference regex
    Given `transaction/provider-org/@ref` is present
     then every `transaction/provider-org/@ref` should match the regex `^[^\/\&\|\?]+$`

  Scenario Outline: receiver organisation reference regex
    Given `transaction/receiver-org/@ref` is present
     then every `transaction/receiver-org/@ref` should match the regex `^[^\/\&\|\?]+$`
