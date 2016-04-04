Patient.destroy_all

mohammed = Patient.create({
  firstName: "Mohammed",
  lastName: "Chalal",
  mrn: 1,
  attendingName: "Dr. Wilson",
  roomNumber: "419",
  codeStatus: "Full",
  dob: "11-8-1988",
  age: 28,
  allergies: "none",
  diet: "Normal",
  nextOfKin: "Allah",
  nextOfKinPhoneNumber: "1-800-dial-brown-jesus",
  isolation: "Contact",
  pmh: [7,95,3],
  homeMeds: [4,8,2,4,23],
  surgicalHx: "none",
  familyHistory: "none",
  smoking: true,
  alcohol: true,
  drugs: false,
  psychHx: "none",
  occupation: "student"
  })

  ryankrolick = Patient.create({
    firstName: "Ryan",
    lastName: "Krolick",
    mrn: 2,
    attendingName: "Dr. Francis",
    roomNumber: 420,
    codeStatus: "full",
    dob: "1-1-1901",
    age: 34,
    allergies: "none",
    diet: "regular",
    nextOfKin: "none he's literally alone in this world",
    nextOfKinPhoneNumber: "none",
    isolation: "none",
    pmh: [1,9,6,10],
    homeMeds: [1,2,5,7],
    surgicalHx: "none",
    familyHistory: "none",
    smoking: true,
    alcohol: true,
    drugs: false,
    psychHx: "none",
    occupation: "student",

    })
  sheila = Patient.create({
    firstName: "Sheila",
    lastName: "Broflovski",
    mrn: 3,
    attendingName: "Dr. Doctor",
    roomNumber: 827,
    codeStatus: "DNR",
    dob: "2-14-1960",
    age: 56,
    allergies: "shellfish",
    diet: "Kosher",
    nextOfKin: "Gerald Broflovski",
    nextOfKinPhoneNumber: "555-555-5555",
    isolation: "probably",
    pmh: "none",
    homeMeds: [5],
    surgicalHx: "none",
    familyHistory: "none",
    smoking: false,
    alcohol: false,
    drugs: false,
    psychHx: "none",
    occupation: "Bitch"
    })

    butters = Patient.create({
    firstName: "Leopold Butters",
    lastName: "Stotch",
    mrn: 4,
    attendingName: "Dr. Doctor",
    roomNumber: "200",
    codeStatus: "Full",
    dob: "9-11-2001",
    age: 10,
    allergies: "almond",
    diet: "normal",
    nextOfKin: "Stephen Stotch",
    nextOfKinPhoneNumber: "555-COF-FEE",
    isolation: "none",
    pmh: [4, 7, 10],
    homeMeds: [65,93],
    surgicalHx: "none",
    familyHistory: "none",
    smoking: false,
    alcohol: false,
    drugs: false,
    psychHx: 'none',
    occupation: "student",
    })


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
