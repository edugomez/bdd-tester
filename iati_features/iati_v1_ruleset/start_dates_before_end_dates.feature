Feature: Start dates chronologically before end dates

  Scenario Outline: planned activity date start-end dates (IATI 1.x)
    Given `activity-date[@type='start-planned']/@iso-date` is a valid date
     and `activity-date[@type='end-planned']/@iso-date` is a valid date
     then `activity-date[@type='start-planned']/@iso-date` should be chronologically before `activity-date[@type='end-planned']/@iso-date`

  Scenario Outline: actual activity date start-end dates (IATI 1.x)
    Given `activity-date[@type='start-actual']/@iso-date` is a valid date
     and `activity-date[@type='end-actual']/@iso-date` is a valid date
     then `activity-date[@type='start-actual']/@iso-date` should be chronologically before `activity-date[@type='end-actual']/@iso-date`

