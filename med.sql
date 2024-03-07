
CREATE TABLE Doctor (
    DoctorID SERIAL PRIMARY KEY,
    FirstName,
    LastName,
    Specialization,
    ContactInfo,
);

CREATE TABLE Patient (
    PatientID SERIAL PRIMARY KEY,
    FirstName,
    LastName,
    DateOfBirth DATE,
    ContactInfo,
);

CREATE TABLE Visit (
    VisitID SERIAL PRIMARY KEY,
    DoctorID INT REFERENCES Doctor(DoctorID),
    PatientID INT REFERENCES Patient(PatientID),
    VisitDate DATE,
);

CREATE TABLE Diagnosis (
    DiagnosisID SERIAL PRIMARY KEY,
    VisitID INT REFERENCES Visit(VisitID),
    DiseaseName,
    Description TEXT,
    Treatment TEXT,
);
