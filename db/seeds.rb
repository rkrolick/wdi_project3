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

mohammed.visits.create({
  imaging: "CXR showed consolidation right lung susp for pneumonia",
  otherProcedures: "Chest CT scheduled tomorrow 4-5",
   chiefComplaint: "S.O.B. with productive cough and fever for one week",
   loc: "AAOx3",
   gcs: "",
   neuroNotes: "",
   rhythm: "NL Sinus Rhythm",
   ejectionFraction: "",
   cardioNotes: "",
   ventSettings: "",
   abg: "7.35/45/90/24/99%",
   pulmonaryNotes: "Pt respirating well ",
   npo: false,
   diet: "normal diet as tolerated",
   tubes: "",
   giNotes: "",
   foley: "",
   foleyPlaceDate: "",
   renalNotes: "",
   glucoseSticks: "90,100,140,160,250,145",
   endoNotes: "Insulin sliding scale monitor glucose q 4 hr",
   sirsSepsisAlert: "yes",
   antibiotics: "levaquin",
   cultures: "sent sputum",
   idNotes: "patient febrile with leukocytosis ",
   intact: "",
   woundCare: "",
   incision: "",
   decubitisUlcers: "",
   edema: "none",
   pt: "",
   skinNotes: "",
   assessmentPlan: "Patient on broad spectrum antibiotics until sputum gram stain and culture return. Continue maintenance fluid. Monitor labs"
  })

  sheila.visits.create({
    imaging: "US inconclusive, scheduled for CT today",
    otherProcedures: "Consider ERCP",
    chiefComplaint: "acute epigastric abdominal pain worsened by movement after binge drinking over the weekend",
     loc: "AAOx3",
     gcs: "",
     neuroNotes: "",
     rhythm: "",
     ejectionFraction: "",
     cardioNotes: "",
     ventSettings: "",
     abg: "",
     pulmonaryNotes: "",
     npo: true,
     diet: "NPO",
     tubes: "",
     giNotes: "GI saw today, Lipase and amylase elevated. Abdominal ultrasound showed no stones, Pt with history of alcohol abuse. Bolus Normal saline with D5 maintenance fluids and insulin sliding scale. Keep NPO and watch",
     foley: "",
     foleyPlaceDate: "",
     renalNotes: "",
     glucoseSticks: "",
     endoNotes: "",
     sirsSepsisAlert: "",
     antibiotics: "Will monitor leukocytosis",
     cultures: "",
     idNotes: "",
     intact: "",
     woundCare: "",
     incision: "",
     decubitisUlcers: "",
     edema: "",
     pt: "",
     skinNotes: "",
     assessmentPlan: "causeeee kyles moms a bitch shes a big fat bitch shes the biggest bitch in the whole wide world shes a stupid bitch if tehre ever was a bitch shes a bitch to all the boys an girls"

    })

mohammed.visits.create({
  imaging: "",
  otherProcedures: "Lumbar Puncture today, waiting on CSF analysis",
  chiefComplaint: "Hard nodule on shaft of penis",
   loc: "",
   gcs: "",
   neuroNotes: "Patient is AAOx3, no changes in mental status. No weakness or neurological defect other than his inborn one",
   rhythm: "NSR",
   ejectionFraction: "",
   cardioNotes: "",
   ventSettings: "",
   abg: "",
   pulmonaryNotes: "",
   npo: false,
   diet: "normal diet",
   tubes: "NG tube",
   giNotes: "",
   foley: "",
   foleyPlaceDate: "",
   renalNotes: "",
   glucoseSticks: "",
   endoNotes: "",
   sirsSepsisAlert: "",
   antibiotics: "Not indicated",
   cultures: "",
   idNotes: "ID consulted, Gumma seen. Ran RPR and VDRL. ",
   intact: "",
   woundCare: "",
   incision: "",
   decubitisUlcers: "",
   edema: "",
   pt: "",
   skinNotes: "",
   assessmentPlan: "Patient presents with primary syphyllis. RPR and VDRL positive. Started on Penecillin G."
  })

  visitId = mohammed.visits.first.id
  mohamvisit1 = mohammed.visits.find(visitId)
  mohamvisit1.vitals.create({
    o2Sat: 100,
    temp: 99.5,
    heartRate: 100,
    systolic: 140,
    diastolic: 90,
    respiratoryRate: 24
  })

  mohamvisit1.cbcs.create({
    wbc: 4000,
    hgb: 12,
    hct: 45,
    plt: 180000
    })

  mohamvisit1.bmps.create({
    na: 140,
    k: 4,
    cl: 100,
    bicarb: 24,
    bun: 20,
    cr: 0.9,
    glucose: 146
    })

  mohamvisit1.ptptts.create({
    pt: 10,
    aptt: 35,
    inr: 1
    })



  visitId = sheila.visits.first.id
  sheilavisit1 = sheila.visits.find(visitId)
  sheilavisit1.vitals.create({
    o2Sat: 100,
    temp: 100,
    heartRate: 130,
    systolic: 110,
    diastolic: 76,
    respiratoryRate: 33
    })

  sheilavisit1.cbcs.create({
    wbc: 6000,
    hgb: 9,
    hct: 35,
    plt: 385000
    })

  sheilavisit1.bmps.create({
    na: 140,
    k: 4,
    cl: 100,
    bicarb: 24,
    bun: 20,
    cr: 0.9,
    glucose: 135
    })

  sheilavisit1.ptptts.create({
    pt: 13,
    aptt: 38,
    inr: 1.2
    })

  sheilavisit1.vitals.create({
    o2Sat: 97,
    temp: 101,
    heartRate: 145,
    systolic: 108,
    diastolic: 86,
    respiratoryRate: 31
    })

  sheilavisit1.cbcs.create({
    wbc: 8000,
    hgb: 8.7,
    hct: 34,
    plt: 320000
    })

  sheilavisit1.bmps.create({
    na: 134,
    k: 4,
    cl: 100,
    bicarb: 19,
    bun: 27,
    cr: 0.8,
    glucose: 136
    })

  sheilavisit1.ptptts.create({
    pt: 14,
    aptt: 37,
    inr: 1.1
    })





# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
