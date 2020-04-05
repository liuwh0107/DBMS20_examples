CREATE TABLE Sailors(
    sid INTEGER,
    sname CHAR(10),
    age REAL,
    rating INTEGER,
    positive_feedback_cnt INTEGER default 0,
    PRIMARY KEY (sid)
);

CREATE TABLE YoungSailors(
    sid INTEGER,
    sname CHAR(10),
    age REAL,
    rating INTEGER,
    PRIMARY KEY (sid)
);

