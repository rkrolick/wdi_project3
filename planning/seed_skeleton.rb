______ = Patient.create({
  firstName: "",
  lastName: "",
  mrn: 3,
  attendingName: "",
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

    sheilavisit1.dxs.create({
      code: "K85.9",
      description: "Acute pancreatitis"
      })
