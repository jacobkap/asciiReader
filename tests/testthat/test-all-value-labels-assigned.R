context("All value labels are present")

test_that("All labels are assigned correctly - SPSS", {

  expect_true(all(c("Single victim/single offender",
                    "Single victim/unknown offender(s)",
                    "Single victim/multiple offenders",
                    "Multiple victims/single offender",
                    "Multiple victims/multiple offenders",
                    "Multiple victims/unknown offender(s)") %in%
                    unique(SHR$SITUATION)))
  expect_true(all(c("Female",
                    "Male",
                    "Unknown") %in% unique(SHR$VICTIM_1_SEX)))
  expect_true(all(c("Hispanic or Latino",
                    "Not Hispanic or Latino",
                    "Unknown or not reported") %in%
                    unique(SHR$VICTIM_1_ETHNIC_ORIGIN)))
  expect_true(all(c("Asian",
                    "Black or African American",
                    "American Indian or Alaska Native",
                    "Unknown",
                    "White") %in% unique(SHR$VICTIM_1_RACE)))
  expect_true(all(c("7 days old to 364 days old",
                    "Birth to 6 days old",
                    "Unknown") %in%
                    unique(SHR$VICTIM_1_AGE)))
  expect_true(all(c("Female",
                    "Male",
                    "Unknown") %in%
                    unique(SHR$OFFENDER_1_SEX)))
  expect_true(all(c("Asian",
                    "Black or African American",
                    "American Indian or Alaska Native",
                    "Unknown",
                    "White") %in% unique(SHR$OFFENDER_1_RACE)))

  expect_true(all(c("Firearm, type not stated",
                    "Handgun - pistol, revolver, etc",
                    "Rifle",
                    "Shotgun",
                    "Other gun",
                    "Knife or cutting instrument",
                    "Blunt object - hammer, club, etc",
                    "Personal weapons, includes beating",
                    "Poison - does not include gas",
                    "Pushed or thrown out window",
                    "Explosives",
                    "Fire",
                    "Narcotics or drugs, sleeping pills",
                    "Drowning",
                    "Strangulation - hanging",
                    "Asphyxiation - includes death by gas",
                    "Other or type unknown") %in%
                    unique(SHR$OFFENDER_1_WEAPON)))

  expect_true(all(c("Felon attacked police officer",
                    "Felon attacked fellow police officer",
                    "Felon attacked a civilian",
                    "Felon attempted flight from a crime",
                    "Felon killed in commission of a crime",
                    "Felon resisted arrest",
                    "Not enough information to determine") %in%
                    unique(SHR$OFFENDER_1_SUB_CIRCUMSTANCE)))

  expect_true(all(c("Acquaintance",
                    "Boyfriend",
                    "Brother",
                    "Common-law husband",
                    "Common-law wife",
                    "Daughter",
                    "Employee",
                    "Employer",
                    "Father",
                    "Friend",
                    "Girlfriend",
                    "Homosexual relationship",
                    "Husband",
                    "In-law",
                    "Mother",
                    "Neighbor",
                    "Other family",
                    "Other - known to victim",
                    "Stepdaughter",
                    "Stepfather",
                    "Sister",
                    "Stepmother",
                    "Son",
                    "Stepson",
                    "Stranger",
                    "Relationship not determined",
                    "Wife",
                    "Ex-husband",
                    "Ex-wife") %in%
                    unique(SHR$OFFENDER_1_RELATIONSHIP_TO_FIRST_VICTIM)))

    expect_true(all(c("Alabama", "Arizona",  "Arkansas", "California",
                    "Colorado", "Connecticut", "Delaware",
                    "District of Columbia",
                    "Florida", "Georgia", "Idaho", "Illinois",
                    "Indiana", "Iowa",
                    "Kansas", "Kentucky", "Louisiana", "Maine",
                    "Maryland", "Massachusetts",
                    "Michigan", "Minnesota", "Mississippi", "Missouri",
                    "Montana", "Nebraska", "Nevada", "New Hampshire",
                    "New Jersey", "New Mexico", "New York", "North Carolina",
                    "North Dakota", "Ohio", "Oklahoma", "Oregon",
                    "Pennsylvania", "Rhode Island", "South Carolina",
                    "South Dakota",
                    "Tennessee", "Texas", "Utah", "Vermont",
                    "Virginia", "Washington",
                    "West Virginia", "Wisconsin", "Wyoming", "Alaska",
                    "Hawaii", "Canal Zone", "Puerto Rico",
                    "Guam") %in%
                    unique(UCR$NUMERIC_STATE_CODE)))

  expect_true(all(c("Possessions",
                    "Cit 1,000,000 +",
                    "Cit 500,000-999,999",
                    "Cit 250,000-499,999",
                    "Cit 100,000-249,999",
                    "Cit 50,000-99,999",
                    "Cit 25,000-49,999",
                    "Cit 10,000-24,999",
                    "Cit 2,500-9,999",
                    "Cit < 2,500",
                    "Non-MSA co. 100,000 +",
                    "Non-MSA co. 25,000-99,999",
                    "Non-MSA co. 10,000-24,999",
                    "Non-MSA co. < 10,000",
                    "MSA co. 100,000 +",
                    "MSA co. 25,000-99,999",
                    "MSA co. 10,000-24,999",
                    "MSA co. < 10,000") %in%
                    unique(UCR$GROUP_NUMBER)))

  expect_true(all(c("All other agencies") %in%
                    unique(UCR$AGENCY_COUNT)))

  expect_true(all(c("Not a special mailing address",
                    "Special mailing address") %in%
                    unique(UCR$SPECIAL_MAILING_ADDRESS)))

  expect_true(all(c("Jan not w oth month",
                    "Reported with Mar",
                    "Reported with Apr",
                    "Reported with Feb",
                    "Reported with Jun") %in%
                    unique(UCR$JAN_MONTH_INCLUDED_IN)))

  expect_true(all(c("No months reported",
                    "Jan last reported",
                    "Feb last reported",
                    "March last reported",
                    "April last reported",
                    "May last reported",
                    "June last reported",
                    "July last reported",
                    "August last reported",
                    "Sep last reported",
                    "Oct last reported",
                    "Nov last reported",
                    "Dec last reported") %in%
                    unique(UCR$NUMBER_OF_MONTHS_REPORTED)))

  expect_true(all(c("AK", "AL", "AR", "AZ", "CA", "CO", "CT",
                    "CZ", "DC", "DE", "FL", "GA", "GM", "HI", "IA",
                    "ID", "IL", "IN", "KS", "KY", "LA", "MA", "MD",
                    "ME", "MI", "MN", "MO", "MS", "MT", "NB", "NC",
                    "ND", "NH", "NJ", "NM", "NV", "NY", "OH", "OK",
                    "OR", "PA", "PR", "RI", "SC", "SD", "TN", "TX",
                    "UT", "VA", "VT", "WA", "WI", "WV", "WY") %in%
                    unique(NIBRS$NUMERIC_STATE_CODE)))

  expect_true(all(c("Possessions",
                    "Cities 1,000,000+",
                    "Cities 500,000-999,999",
                    "Cities 250,000-499,999",
                    "Cities 100,000-249,999",
                    "Cities 50,000-99,999",
                    "Cities 25,000-49,999",
                    "Cities 10,000-24,999",
                    "Cities 2,500-9,999",
                    "Cites < 2,500",
                    "Non-MSA Counties 100,000+",
                    "Non-MSA Counties 25,000-99,999",
                    "Non-MSA Counties 10,000-24,999",
                    "Non-MSA Counties < 10,000",
                    "Non-MSA State Police",
                    "MSA Counties 100,000+",
                    "MSA Counties 25,000-99,999",
                    "MSA Counties 10,000-24,999",
                    "MSA Counties < 10,000",
                    "MSA State Police") %in%
                    unique(NIBRS$POPULATION_GROUP)))

  expect_true(all(c("North East",
                    "North Central",
                    "South",
                    "West") %in%
                    unique(NIBRS$COUNTRY_REGION)))

  expect_true(all(c("Covered by another agency",
                    "City",
                    "County",
                    "University or college",
                    "State Police",
                    "Special Agency") %in%
                    unique(NIBRS$AGENCY_INDICATOR)))

  expect_true(all(c("Yes", "No") %in%
                    unique(NIBRS$CORE_CITY)))

})

# Read SAS =====================================================
test_that("All labels are assigned correctly - SAS", {

  expect_true(all(c("(A) Single victim/single offender",
                    "(B) Single victim/unknown offender(s)",
                    "(C) Single victim/multiple offenders",
                    "(D) Multiple victims/single offender",
                    "(E) Multiple victims/multiple offenders",
                    "(F) Multiple victims/unknown offender(s)") %in%
                    unique(SHR_sas$SITUATION)))
  expect_true(all(c("(F) Female",
                    "(M) Male",
                    "(U) Unknown") %in%
                    unique(SHR_sas$VICTIM_1_SEX)))
  expect_true(all(c("(H) Hispanic or Latino",
                    "(N) Not Hispanic or Latino",
                    "(U) Unknown or not reported") %in%
                    unique(SHR_sas$VICTIM_1_ETHNIC_ORIGIN)))
  expect_true(all(c("(A) Asian",
                    "(B) Black or African American",
                    "(I) American Indian or Alaska Native",
                    "(U) Unknown",
                    "(W) White") %in%
                    unique(SHR_sas$VICTIM_1_RACE)))
  expect_true(all(c("(00) Unknown",
                    "(1) 1 year old",
                    "(BB) 7 days old to 364 days old",
                    "(NB) Birth to 6 days old") %in%
                    unique(SHR_sas$VICTIM_1_AGE)))
  expect_true(all(c("(F) Female",
                    "(M) Male",
                    "(U) Unknown") %in%
                    unique(SHR_sas$OFFENDER_1_SEX)))
  expect_true(all(c("(A) Asian",
                    "(B) Black or African American",
                    "(I) American Indian or Alaska Native",
                    "(U) Unknown",
                    "(W) White") %in%
                    unique(SHR_sas$OFFENDER_1_RACE)))
  expect_true(all(c("(11) Firearm, type not stated",
                    "(12) Handgun - pistol, revolver, etc",
                    "(13) Rifle",
                    "(14) Shotgun",
                    "(15) Other gun",
                    "(20) Knife or cutting instrument",
                    "(30) Blunt object - hammer, club, etc",
                    "(40) Personal weapons, includes beating",
                    "(50) Poison - does not include gas",
                    "(55) Pushed or thrown out window",
                    "(60) Explosives",
                    "(65) Fire",
                    "(70) Narcotics or drugs, sleeping pills",
                    "(75) Drowning",
                    "(80) Strangulation - hanging",
                    "(85) Asphyxiation - includes death by gas",
                    "(90) Other or type unknown") %in%
                    unique(SHR_sas$OFFENDER_1_WEAPON)))
  expect_true(all(c("(A) Felon attacked police officer",
                    "(B) Felon attacked fellow police officer",
                    "(C) Felon attacked a civilian",
                    "(D) Felon attempted flight from a crime",
                    "(E) Felon killed in commission of a crime",
                    "(F) Felon resisted arrest",
                    "(G) Not enough information to determine") %in%
                    unique(SHR_sas$OFFENDER_1_SUB_CIRCUMSTANCE)))
  expect_true(all(c("(AQ) Acquaintance",
                    "(BF) Boyfriend",
                    "(BR) Brother",
                    "(CH) Common-law husband",
                    "(CW) Common-law wife",
                    "(DA) Daughter",
                    "(EE) Employee",
                    "(ER) Employer",
                    "(FA) Father",
                    "(FR) Friend",
                    "(GF) Girlfriend",
                    "(HO) Homosexual relationship",
                    "(HU) Husband",
                    "(IL) In-law",
                    "(MO) Mother",
                    "(NE) Neighbor",
                    "(OF) Other family",
                    "(OK) Other - known to victim",
                    "(SD) Stepdaughter",
                    "(SF) Stepfather",
                    "(SI) Sister",
                    "(SM) Stepmother",
                    "(SO) Son",
                    "(SS) Stepson",
                    "(ST) Stranger",
                    "(UN) Relationship not determined",
                    "(WI) Wife",
                    "(XH) Ex-husband",
                    "(XW) Ex-wife") %in%
                    unique(SHR_sas$OFFENDER_1_RELATIONSHIP_TO_FIRST_VICTIM)))

  expect_true(all(c("Alabama",
                    "Arizona",
                    "Arkansas",
                    "California",
                    "Colorado",
                    "Connecticut",
                    "Delaware",
                    "District of Columbia",
                    "Florida",
                    "Georgia",
                    "Idaho",
                    "Illinois",
                    "Indiana",
                    "Iowa",
                    "Kansas",
                    "Kentucky",
                    "Louisiana",
                    "Maine",
                    "Maryland",
                    "Massachusetts",
                    "Michigan",
                    "Minnesota",
                    "Mississippi",
                    "Missouri",
                    "Montana",
                    "Nebraska",
                    "Nevada",
                    "New Hampshire",
                    "New Jersey",
                    "New Mexico",
                    "New York",
                    "North Carolina",
                    "North Dakota",
                    "Ohio",
                    "Oklahoma",
                    "Oregon",
                    "Pennsylvania",
                    "Rhode Island",
                    "South Carolina",
                    "South Dakota",
                    "Tennessee",
                    "Texas",
                    "Utah",
                    "Vermont",
                    "Virginia",
                    "Washington",
                    "West Virginia",
                    "Wisconsin",
                    "Wyoming",
                    "Alaska",
                    "Hawaii",
                    "Canal Zone",
                    "Puerto Rico",
                    "Guam") %in%
                    unique(UCR_sas$NUMERIC_STATE_CODE)))

  expect_true(all(c("Possessions",
                    "Cit 1,000,000 +",
                    "Cit 500,000-999,999",
                    "Cit 250,000-499,999",
                    "Cit 100,000-249,999",
                    "Cit 50,000-99,999",
                    "Cit 25,000-49,999",
                    "Cit 10,000-24,999",
                    "Cit 2,500-9,999",
                    "Cit < 2,500",
                    "Non-MSA co. 100,000 +",
                    "Non-MSA co. 25,000-99,999",
                    "Non-MSA co. 10,000-24,999",
                    "Non-MSA co. < 10,000",
                    "MSA co. 100,000 +",
                    "MSA co. 25,000-99,999",
                    "MSA co. 10,000-24,999",
                    "MSA co. < 10,000") %in%
                    unique(UCR_sas$GROUP_NUMBER)))

  expect_true(all(c("All other agencies") %in%
                    unique(UCR_sas$AGENCY_COUNT)))

  expect_true(all(c("Not a special mailing address",
                    "Special mailing address") %in%
                    unique(UCR_sas$SPECIAL_MAILING_ADDRESS)))

  expect_true(all(c("Jan not w oth month",
                    "Reported with Mar",
                    "Reported with Apr",
                    "Reported with Feb",
                    "Reported with Jun") %in%
                    unique(UCR_sas$JAN_MONTH_INCLUDED_IN)))

  expect_true(all(c("No months reported",
                    "Jan last reported",
                    "Feb last reported",
                    "March last reported",
                    "April last reported",
                    "May last reported",
                    "June last reported",
                    "July last reported",
                    "August last reported",
                    "Sep last reported",
                    "Oct last reported",
                    "Nov last reported",
                    "Dec last reported") %in%
                    unique(UCR_sas$NUMBER_OF_MONTHS_REPORTED)))

  expect_true(all(c("AK", "AL", "AR", "AZ", "CA", "CO", "CT",
                    "CZ", "DC", "DE", "FL", "GA", "GM", "HI", "IA",
                    "ID", "IL", "IN", "KS", "KY", "LA", "MA", "MD",
                    "ME", "MI", "MN", "MO", "MS", "MT", "NB", "NC",
                    "ND", "NH", "NJ", "NM", "NV", "NY", "OH", "OK",
                    "OR", "PA", "PR", "RI", "SC", "SD", "TN", "TX",
                    "UT", "VA", "VT", "WA", "WI", "WV", "WY") %in%
                    unique(NIBRS_sas$NUMERIC_STATE_CODE)))

  expect_true(all(c("Possessions",
                    "Cities 1,000,000+",
                    "Cities 500,000-999,999",
                    "Cities 250,000-499,999",
                    "Cities 100,000-249,999",
                    "Cities 50,000-99,999",
                    "Cities 25,000-49,999",
                    "Cities 10,000-24,999",
                    "Cities 2,500-9,999",
                    "Cites < 2,500",
                    "Non-MSA Counties 100,000+",
                    "Non-MSA Counties 25,000-99,999",
                    "Non-MSA Counties 10,000-24,999",
                    "Non-MSA Counties < 10,000",
                    "Non-MSA State Police",
                    "MSA Counties 100,000+",
                    "MSA Counties 25,000-99,999",
                    "MSA Counties 10,000-24,999",
                    "MSA Counties < 10,000",
                    "MSA State Police") %in%
                    unique(NIBRS_sas$POPULATION_GROUP)))

  expect_true(all(c("North East",
                    "North Central",
                    "South",
                    "West") %in%
                    unique(NIBRS_sas$COUNTRY_REGION)))

  expect_true(all(c("Covered by another agency",
                    "City",
                    "County",
                    "University or college",
                    "State Police",
                    "Special Agency") %in%
                    unique(NIBRS_sas$AGENCY_INDICATOR)))

  expect_true(all(c("Yes",
                    "No") %in%
                    unique(NIBRS_sas$CORE_CITY)))

})
