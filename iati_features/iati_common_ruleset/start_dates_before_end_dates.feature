Feature: Start dates chronologically before end dates

  Scenario Outline: result indicator period start-end dates
    Given `result/indicator/period/period-start/@iso-date` is a valid date
     and `result/indicator/period/period-end/@iso-date` is a valid date
     then `result/indicator/period/period-start/@iso-date` should be chronologically before `result/indicator/period/period-end/@iso-date`

  Scenario Outline: recipient organisation budget period start-end dates
    Given `recipient-org-budget/period-start/@iso-date` is a valid date
     and `recipient-org-budget/period-end/@iso-date` is a valid date
     then `recipient-org-budget/period-start/@iso-date` should be chronologically before `recipient-org-budget/period-end/@iso-date`

  Scenario Outline: recipient region budget period start-end dates
    Given `recipient-region-budget/period-start/@iso-date` is a valid date
     and `recipient-region-budget/period-end/@iso-date` is a valid date
     then `recipient-region-budget/period-start/@iso-date` should be chronologically before `recipient-region-budget/period-end/@iso-date`

  Scenario Outline: planned disbursement period start-end dates
    Given `planned-disbursement/period-start/@iso-date` is a valid date
     and `planned-disbursement/period-end/@iso-date` is a valid date
     then `planned-disbursement/period-start/@iso-date` should be chronologically before `planned-disbursement/period-end/@iso-date`

  Scenario Outline: recipient-country budget period start-end dates
    Given `recipient-country-budget/period-start/@iso-date` is a valid date
     and `recipient-country-budget/period-end/@iso-date` is a valid date
     then `recipient-country-budget/period-start/@iso-date` should be chronologically before `recipient-country-budget/period-end/@iso-date`

  Scenario Outline: total expenditure period start-end dates
    Given `total-expenditure/period-start/@iso-date` is a valid date
     and `total-expenditure/period-end/@iso-date` is a valid date
     then `total-expenditure/period-start/@iso-date` should be chronologically before `total-expenditure/period-end/@iso-date`

  Scenario Outline: budget period start-end dates
    Given `budget/period-start/@iso-date` is a valid date
     and `budget/period-end/@iso-date` is a valid date
     then `budget/period-start/@iso-date` should be chronologically before `budget/period-end/@iso-date`
