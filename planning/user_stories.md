USER STORIES HAND-JOB

As a user,

* I want to see a main page, with a list of my current patients in a sidebar.
* When I hover on a patient name, it fills the patient's at a glance info onto the page.
* If I click that page, the patient's full info takes over the page.
* When the patient info fills the page, it pushes other elements out of the way.
* The patient info should include the following:
  Basic info:
    - Name
    - MRN: medical record number
    - Attending Name: name of the attending physician
    - Room Number
    - Code Status- full code, partial code, or DNR- do not resuscitate
    - DOB: date of birth
    - Age
    - allergies/ drug allergies
    - diet: normal diet, diabetic diet, high protein diet, dialysis diet, etc
    - Next of Kin + Phone Number
    - Isolation: if the patient has infectious disease concerns

  Situation and Background:
    - CC: the chief complaint, the reason the patient is admitted.
    - PMH: past medical history: the comorbidities of the patient.
    - Surgical Hx: any past surgeries
    - family history: any genetic illness, cancer, etc.
    - social history:
      - smoking
      - alcohol
      - drugs
      - psych hx
      - occupation


    Objective General:
    - Vital signs:
        O2 saturation
        RR: respiration rate
        HR: heart rate
        BP: blood pressure
        T: temperature

    - Labs: skeleton display for:
        cbc: complete blood count
        bmp: basic metabolic profile
        lft: Liver function tests
        clotting values:
          pt: prothrombin time
          ptt: activated partial thromboplastin time
          inr: international normalized ratio
        other: (cardiac enzymes (troponin trends), etc) with options to trend values.


    - Imaging:
        forms for user input of any imaging procedures the patient has undergone.

    - Other diagnostic procedures performed: biopsies, LP, stress tests, etc

    - current medications with dosage and route
        API from NIH



    Objective by System: (all will be strings, will include consults)
      Examples of inputs for the following systems include:

      Neuro: LOC/Mental status (AAOx3), GCS (if icu)
        notes: pupils, reflexes, Activity, restraints, procedures
      Cardiovascular:
        rhythm (NSR?)
        ejection fraction
        notes
      Pulmonary:
        vent settings
        ABG trends
      GI/ABD
        NPO?
        Diet?
        Tubes? (NG, OG, PEG)
        notes: (bms, sounds, etc)
      GU/Renal
        foley: y/n, date placed
        notes:
      Endocrine
        Glucose sticks trended
        notes:
      ID
        SIRS/SEPSIS alerts?
        antibiotics
        cultures- sputum, blood 1/2, urine, nares, wound
      Skin/MSK
        Intact
        wound care
        incision
        decubitis ulcers?
        edema
        PT
        IV's / Lines / catheters / drains
          1.
          2..
          3.
          4.

Assessment and Plan


* I can see pertinent information, and then expand to see that total information
* I can click something that takes me to a printable version, showing all patients and pertinent info in a table.
* The patient visits are saved so that you can trend values and see previous visits. 
