ALTER TABLE BBB_MEETING_PARTICIPANT DROP PRIMARY KEY;
ALTER TABLE BBB_MEETING_PARTICIPANT ADD COLUMN ID bigint(20) NOT NULL AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE BBB_MEETING_PARTICIPANT ADD CONSTRAINT UNIQUE (MEETING_ID, SELECTION_TYPE, SELECTION_ID);
ALTER TABLE BBB_MEETING_PARTICIPANT MODIFY MEETING_ID varchar(36) DEFAULT NULL;
ALTER TABLE BBB_MEETING_PARTICIPANT ADD CONSTRAINT FOREIGN KEY (MEETING_ID) REFERENCES BBB_MEETING (MEETING_ID);

CREATE TABLE BBB_MEETING_PROPERTIES (
  MEETING_ID varchar(36) NOT NULL,
  VALUE varchar(255) DEFAULT NULL,
  NAME varchar(255) NOT NULL,
  PRIMARY KEY (MEETING_ID,NAME),
  CONSTRAINT FOREIGN KEY (MEETING_ID) REFERENCES BBB_MEETING (MEETING_ID)
);