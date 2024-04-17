CREATE TABLE IF NOT EXISTS User
(
    id
    INT
    AUTO_INCREMENT
    PRIMARY
    KEY,
    password
    VARCHAR
(
    128
) NOT NULL,
    username VARCHAR
(
    150
) NOT NULL UNIQUE,
    firstName VARCHAR
(
    30
) NOT NULL,
    lastName VARCHAR
(
    150
) NOT NULL,
    email VARCHAR
(
    254
) NOT NULL UNIQUE,
    userType VARCHAR
(
    10
) NOT NULL
    );

CREATE TABLE IF NOT EXISTS Division
(
    id
    INT
    AUTO_INCREMENT
    PRIMARY
    KEY,
    name
    VARCHAR
(
    100
) NOT NULL,
    banglaName VARCHAR
(
    100
) NOT NULL
    );

CREATE TABLE IF NOT EXISTS District
(
    id
    INT
    AUTO_INCREMENT
    PRIMARY
    KEY,
    divisionId
    INT
    NOT
    NULL,
    name
    VARCHAR
(
    100
) NOT NULL,
    banglaName VARCHAR
(
    100
) NOT NULL,
    longitude DOUBLE,
    latitude DOUBLE,
    FOREIGN KEY
(
    divisionId
) REFERENCES Division
(
    id
)
    );

CREATE TABLE IF NOT EXISTS Upazila
(
    id
    INT
    AUTO_INCREMENT
    PRIMARY
    KEY,
    districtId
    INT
    NOT
    NULL,
    name
    VARCHAR
(
    100
) NOT NULL,
    banglaName VARCHAR
(
    100
) NOT NULL,
    longitude DOUBLE,
    latitude DOUBLE,
    FOREIGN KEY
(
    districtId
) REFERENCES District
(
    id
)
    );

CREATE TABLE IF NOT EXISTS DistrictUnion
(
    id
    INT
    AUTO_INCREMENT
    PRIMARY
    KEY,
    upazilaId
    INT
    NOT
    NULL,
    name
    VARCHAR
(
    100
) NOT NULL,
    banglaName VARCHAR
(
    100
) NOT NULL,
    longitude DOUBLE,
    latitude DOUBLE,
    FOREIGN KEY
(
    upazilaId
) REFERENCES Upazila
(
    id
)
    );

CREATE TABLE IF NOT EXISTS Disaster
(
    id
    INT
    AUTO_INCREMENT
    PRIMARY
    KEY,
    title
    VARCHAR
(
    100
) NOT NULL,
    description TEXT NOT NULL,
    startTime TIMESTAMP NOT NULL,
    endTime TIMESTAMP,
    FOREIGN KEY
(
    id
) REFERENCES Upazila
(
    id
)
    );

CREATE TABLE IF NOT EXISTS AffectedDistrict
(
    id
    INT
    AUTO_INCREMENT
    PRIMARY
    KEY,
    disasterId
    INT
    NOT
    NULL,
    districtId
    INT
    NOT
    NULL,
    affectedPeople
    INT,
    FOREIGN
    KEY
(
    disasterId
) REFERENCES Disaster
(
    id
),
    FOREIGN KEY
(
    districtId
) REFERENCES District
(
    id
)
    );

CREATE TABLE IF NOT EXISTS AffectedUpazila
(
    id
    INT
    AUTO_INCREMENT
    PRIMARY
    KEY,
    disasterId
    INT
    NOT
    NULL,
    upazilaId
    INT
    NOT
    NULL,
    affectedPeople
    INT,
    FOREIGN
    KEY
(
    disasterId
) REFERENCES Disaster
(
    id
),
    FOREIGN KEY
(
    upazilaId
) REFERENCES Upazila
(
    id
)
    );

CREATE TABLE IF NOT EXISTS AffectedUnion
(
    id
    INT
    AUTO_INCREMENT
    PRIMARY
    KEY,
    disasterId
    INT
    NOT
    NULL,
    unionId
    INT
    NOT
    NULL,
    affectedPeople
    INT,
    FOREIGN
    KEY
(
    disasterId
) REFERENCES Disaster
(
    id
),
    FOREIGN KEY
(
    unionId
) REFERENCES DistrictUnion
(
    id
)
    );

CREATE TABLE IF NOT EXISTS DisasterImage
(
    id
    INT
    AUTO_INCREMENT
    PRIMARY
    KEY,
    disasterId
    INT
    NOT
    NULL,
    image
    VARCHAR
(
    100
) NOT NULL,
    FOREIGN KEY
(
    disasterId
) REFERENCES Disaster
(
    id
)
    );

CREATE TABLE IF NOT EXISTS Donation
(
    id
    INT
    AUTO_INCREMENT
    PRIMARY
    KEY,
    title
    VARCHAR
(
    100
) NOT NULL,
    description TEXT NOT NULL,
    createdById INT NOT NULL,
    disasterId INT,
    state VARCHAR
(
    10
) NOT NULL,
    FOREIGN KEY
(
    createdById
) REFERENCES User
(
    id
),
    FOREIGN KEY
(
    disasterId
) REFERENCES Disaster
(
    id
)
    );

CREATE TABLE IF NOT EXISTS DonatedDistrict
(
    id
    INT
    AUTO_INCREMENT
    PRIMARY
    KEY,
    donationId
    INT
    NOT
    NULL
    UNIQUE,
    districtId
    INT
    NOT
    NULL,
    donatedPeople
    INT,
    description
    TEXT
    NOT
    NULL,
    FOREIGN
    KEY
(
    donationId
) REFERENCES Donation
(
    id
),
    FOREIGN KEY
(
    districtId
) REFERENCES District
(
    id
)
    );

CREATE TABLE IF NOT EXISTS DonatedUpazila
(
    id
    INT
    AUTO_INCREMENT
    PRIMARY
    KEY,
    donationId
    INT
    NOT
    NULL
    UNIQUE,
    upazilaId
    INT
    NOT
    NULL,
    donatedPeople
    INT,
    description
    TEXT
    NOT
    NULL,
    FOREIGN
    KEY
(
    donationId
) REFERENCES Donation
(
    id
),
    FOREIGN KEY
(
    upazilaId
) REFERENCES Upazila
(
    id
)
    );

CREATE TABLE IF NOT EXISTS DonatedUnion
(
    id
    INT
    AUTO_INCREMENT
    PRIMARY
    KEY,
    donationId
    INT
    NOT
    NULL
    UNIQUE,
    unionId
    INT
    NOT
    NULL,
    donatedPeople
    INT,
    description
    TEXT
    NOT
    NULL,
    FOREIGN
    KEY
(
    donationId
) REFERENCES Donation
(
    id
),
    FOREIGN KEY
(
    unionId
) REFERENCES DistrictUnion
(
    id
)
    );

CREATE TABLE IF NOT EXISTS Media
(
    id
    INT
    AUTO_INCREMENT
    PRIMARY
    KEY,
    donationId
    INT
    NOT
    NULL,
    media
    VARCHAR
(
    100
) NOT NULL,
    type VARCHAR
(
    10
) NOT NULL,
    FOREIGN KEY
(
    donationId
) REFERENCES Donation
(
    id
)
    );

CREATE TABLE IF NOT EXISTS DonatedItems
(
    id
    INT
    AUTO_INCREMENT
    PRIMARY
    KEY,
    donatedDistrictId
    INT,
    donatedUpazilaId
    INT,
    donatedUnionId
    INT,
    name
    VARCHAR
(
    100
) NOT NULL,
    quantity DOUBLE NOT NULL,
    unit VARCHAR
(
    100
) NOT NULL,
    description TEXT NOT NULL,
    FOREIGN KEY
(
    donatedDistrictId
) REFERENCES DonatedDistrict
(
    id
),
    FOREIGN KEY
(
    donatedUpazilaId
) REFERENCES DonatedUpazila
(
    id
),
    FOREIGN KEY
(
    donatedUnionId
) REFERENCES DonatedUnion
(
    id
)
    );
