Patient.destroy_all
Visit.destroy_all
Vital.destroy_all
Cbc.destroy_all
Bmp.destroy_all
Ptptt.destroy_all
Rx.destroy_all
Dx.destroy_all

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
  pmh: ["I10", "E11", "E78"],
  homeMeds: ["Lisinopril 20 mg PO QD", "Simvastatin 10 mg PO QD", "Metformin 500 mg PO BID"],
  surgicalHx: "none",
  familyHistory: "none",
  smoking: true,
  alcohol: true,
  drugs: false,
  psychHx: "none",
  occupation: "student"
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

      visitId = mohammed.visits.last.id
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

      mohamvisit1.dxs.create({
        code: "I10",
        description: "Essential hypertension"
        })
      mohamvisit1.dxs.create({
        code: "E11",
        description: "Type 2 diabetes mellitus"
        })
      mohamvisit1.dxs.create({
        code: "A51",
        description: "Early syphilis"
        })

      mohamvisit1.dxs.create({

        code: "E78",
        description: "Disorders of lipoprotein metabolism and other lipidemias"
        })

      mohamvisit1.rxs.create({
        drugName: "Penecillin G",
        dosage: "2.4 million units",
        route: "IM",
        frequency: "once daily"
        })

  ryan = Patient.create({
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
    pmh: ["J45", "K21"],
    homeMeds: ["albuterol 1 puff PRN", "Omeperazole 10 mg QD" ],
    surgicalHx: "none",
    familyHistory: "none",
    smoking: true,
    alcohol: true,
    drugs: false,
    psychHx: "none",
    occupation: "student",

    })

    ryan.visits.create({
      imaging: "Doppler showed no evidence of DVT",
      otherProcedures: "",
       chiefComplaint: "Cellulitis",
       loc: "AAOx3",
       gcs: "",
       neuroNotes: "No sensory or motor deficits",
       rhythm: "NL Sinus Rhythm",
       ejectionFraction: "",
       cardioNotes: "RRR, no murmurs rubs or gallops",
       ventSettings: "",
       abg: "",
       pulmonaryNotes: "No shortness of breath",
       npo: false,
       diet: "normal diet as tolerated",
       tubes: "",
       giNotes: "",
       foley: "",
       foleyPlaceDate: "",
       renalNotes: "",
       glucoseSticks: "",
       endoNotes: "",
       sirsSepsisAlert: "yes",
       antibiotics: "vancomycin 15 mg/kg IV q12h",
       cultures: "blood cultures x 3 sent",
       idNotes: "patient afebrile with mild leukocytosis",
       intact: "",
       woundCare: "",
       incision: "",
       decubitisUlcers: "",
       edema: "yes",
       pt: "",
       skinNotes: "Erythematous left thigh spreading down knee to shin. Warm to touch. Moderate edema",
       assessmentPlan: "Cellulitis: Patient started on vanco. Monitor leukocytosis. Follow up with ID. Doppler r/o DVT."
      })

      visitId = ryan.visits.last.id
      ryanvisit1 = ryan.visits.find(visitId)
      ryanvisit1.vitals.create({
        o2Sat: 100,
        temp: 100.4,
        heartRate: 89,
        systolic: 130,
        diastolic: 80,
        respiratoryRate: 18
      })

      ryanvisit1.cbcs.create({
        wbc: 8000,
        hgb: 13,
        hct: 42,
        plt: 350000
        })

      ryanvisit1.bmps.create({
        na: 140,
        k: 4,
        cl: 100,
        bicarb: 24,
        bun: 20,
        cr: 0.9,
        glucose: 210
        })

      ryanvisit1.ptptts.create({
        pt: 11,
        aptt: 45,
        inr: 1
        })

      ryanvisit1.dxs.create({
        code: "L03",
        description: "Cellulitis and acute lymphangitis"
        })

      ryanvisit1.rxs.create({
        drugName: "Vancomycin",
        dosage: "15 mg/kg",
        route: "IV",
        frequency: "Q12"
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
      visitId = sheila.visits.last.id
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

      sheilavisit1.dxs.create({
        code: "K85.9",
        description: "Acute pancreatitis"
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










  mrgarrison = Patient.create({
    firstName: "Herbert/Janet",
    lastName: "Garrison",
    mrn: 8336,
    attendingName: "Dr. Bajwa",
    roomNumber: "921",
    codeStatus: "DNR",
    dob: "04-1-1975",
    age: 41,
    allergies: "none",
    diet: "Normal",
    nextOfKin: "Mr. Slave",
    nextOfKinPhoneNumber: "696-696-6969",
    isolation: "Contact",
    pmh: [3,2,3],
    homeMeds: [8, 76,49, 51],
    surgicalHx: "gender reassignment surgery",
    familyHistory: "none",
    smoking: false,
    alcohol: true,
    drugs: true,
    psychHx: "extensive",
    occupation: "4th grade teacher"
    })
    mrgarrison.visits.create({
      imaging: "Abdominal x-ray shows bowling pin and hamster corpse lodged in sigmoid colon.",
      otherProcedures: "Surgical intervention necessary",
      chiefComplaint: "Foreign Body in anus and rectum, initial encounter",
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
       tubes: "anal decompression tube in place, ngt placed as well.",
       giNotes: "GI saw today, patient has severeal foreign bodies in rectum and sigmoid colon. needs surgical intervention. Get surgery consult.",
       foley: "in place",
       foleyPlaceDate: "4-3-2015",
       renalNotes: "",
       glucoseSticks: "",
       endoNotes: "",
       sirsSepsisAlert: "",
       antibiotics: "Will monitor leukocytosis",
       cultures: "blood cultures X 3 sent. ",
       idNotes: "",
       intact: "",
       woundCare: "",
       incision: "",
       decubitisUlcers: "",
       edema: "",
       pt: "",
       skinNotes: "",
       assessmentPlan: "Patient for surgery tomorrow"

      })
    visitId = mrgarrison.visits.last.id
    mrgarrisonvisit1 = mrgarrison.visits.find(visitId)
    mrgarrisonvisit1.vitals.create({
      o2Sat: 100,
      temp: 97.6,
      heartRate: 76,
      systolic: 118,
      diastolic: 87,
      respiratoryRate: 20
      })

    mrgarrisonvisit1.cbcs.create({
      wbc: 4000,
      hgb: 13,
      hct: 30,
      plt: 150000
      })

    mrgarrisonvisit1.bmps.create({
      na: 140,
      k: 4,
      cl: 100,
      bicarb: 23,
      bun: 22,
      cr: 1.2,
      glucose: 160
      })

    mrgarrisonvisit1.ptptts.create({
      pt: 12,
      aptt: 40,
      inr: 1.0
      })

randy = Patient.create({
  firstName: "Randy",
  lastName: "Marsh",
  mrn: 96,
  attendingName: "Dr. Bajwa",
  roomNumber: 741,
  codeStatus: "Full Code",
  dob: "4-20-1971",
  age: 45,
  allergies: "none",
  diet: "Normal Diet",
  nextOfKin: "Sharon Marsh",
  nextOfKinPhoneNumber: "555-555-5555",
  isolation: "none",
  pmh: ["C62.9", "F10"],
  homeMeds: ["none"],
  surgicalHx: "none",
  familyHistory: "none",
  smoking: false,
  alcohol: true,
  drugs: true,
  psychHx: "none",
  occupation: "Geologist"
  })

  randy.visits.create({
    imaging: "Spiral CT showed saddle embolus",
    otherProcedures: "none",
    chiefComplaint: "Pulmonary Embolus - I26.02",
     loc: "AAOx3",
     gcs: "",
     neuroNotes: "",
     rhythm: "NSR",
     ejectionFraction: "50%",
     cardioNotes: "Seen by cardio, take recs from Pulmonary",
     ventSettings: "n/a",
     abg: "7.26/60/82/18/87%",
     pulmonaryNotes: "Patient has suffered severe saddle embolus.",
     npo: false,
     diet: "liquid diet",
     tubes: "",
     giNotes: "",
     foley: "",
     foleyPlaceDate: "",
     renalNotes: "",
     glucoseSticks: "",
     endoNotes: "",
     sirsSepsisAlert: "",
     antibiotics: "",
     cultures: "",
     idNotes: "",
     intact: "",
     woundCare: "",
     incision: "",
     decubitisUlcers: "",
     edema: "",
     pt: "",
     skinNotes: "",
     assessmentPlan: "Saddle Embolus - I26.02"

    })
    visitId = randy.visits.last.id
    randyvisit1 = randy.visits.find(visitId)
    randyvisit1.vitals.create({
      o2Sat: 87,
      temp: 99,
      heartRate: 120,
      systolic: 180,
      diastolic: 128,
      respiratoryRate: 33
      })

    randyvisit1.cbcs.create({
      wbc: 4000,
      hgb: 14,
      hct: 40,
      plt: 128000
      })

    randyvisit1.bmps.create({
      na: 140,
      k: 4,
      cl: 100,
      bicarb: 24,
      bun: 20,
      cr: 0.9,
      glucose: 135
      })

    randyvisit1.ptptts.create({
      pt: 10,
      aptt: 40,
      inr: 1.0
      })

    randyvisit1.dxs.create({
      code: "K85.9",
      description: "Acute pancreatitis"
      })

    randyvisit1.rxs.create({
      drugName: "tPA ",
      dosage: "87 mg",
      route: "IV Push",
      frequency: "once"
      })




# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
