       PROCESS NODLL,NODYNAM,TEST(NOSEP),NOCICS,NOSQL,PGMN(LU)
      *+---------------------------------------------------------------+
      *| TLGICDB0                                                      |
      *| PRODUCT: IBM DEVELOPER FOR ZOS                                |
      *| COMPONENT: IBM Z/OS AUTOMATED UNIT2TESTINGS RAMEWORK (ZUNIT)  |
      *|    FOR ENTERPRISE COBOL AND PL/I                               |
      *| PROGRAM: ENTERPRISE COBOL ZUNIT TEST CASE FOR DYNAMIC RUNNER  |
      *| DATE GENERATED: 01/31/2021 01:31                              |
      *| ID: 7ccdfbd6-1f73-4680-a48e-298e3e67ff49                      |
      *+---------------------------------------------------------------+
      *+---------------------------------------------------------------+
      *| TEST_SQLC913                                                  |
      *|     THIS PROGRAM IS FOR TEST SQLC913                          |
      *+---------------------------------------------------------------+
       IDENTIFICATION DIVISION.
       PROGRAM-ID. 'TEST_SQLC913'.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 PROGRAM-NAME   PIC X(8)  VALUE 'LGICDB01'.
       01 BZ-ASSERT.
         03 MESSAGE-LEN PIC S9(4) COMP-4 VALUE 24.
         03 MESSAGE-TXT PIC X(254) VALUE 'HELLO FROM TEST CALLBACK'.
       01  BZ-P1 PIC S9(9) COMP-4 VALUE 4.
       01  BZ-P2 PIC S9(9) COMP-4 VALUE 2001.
       01  BZ-P3 PIC X(3) VALUE 'AZU'.
       01 BZ-TRACE.
         03 TRACE-LEN       PIC S9(4) COMP-4 VALUE 5.
         03 TRACE-TXT       PIC X(254) VALUE 'TRACE'.
       01 BZUASSRT          PIC X(8) VALUE 'BZUASSRT'.
       01 BZUTRACE          PIC X(8) VALUE 'BZUTRACE'.
       01 AZ-TRACE-PTR      POINTER.
       01 ASSERT-ST.
         03 ASSERT-RC PIC 9(9) BINARY VALUE 4.
         03 ASSERT-TEXT PIC 9(4) BINARY VALUE 0.
       01 AZ-TEST-NAME-LEN       PIC S9(9) COMP-5.
       1 AZ-TEST-INPUT-DATA-VALUE.
          3 ZUT00000000.
            5 PIC X(4) DISPLAY VALUE 'SSC1'.
          3 ZUT00000001.
            5 PIC X(4) DISPLAY VALUE 'TC4E'.
          3 ZUT00000002.
            5 PIC X(1) DISPLAY VALUE
            ''''.
          3 ZUT00000003.
            5 PIC X(2) VALUE X'0E02'.
          3 ZUT00000004.
            5 PIC X(8) DISPLAY VALUE 'LGICDB01'.
          3 ZUT00000005.
            5 PIC X(6) DISPLAY VALUE '01ICUS'.
          3 ZUT00000006.
            5 PIC X(10) DISPLAY VALUE SPACES.
          3 ZUT00000007.
            5 PIC X(20) DISPLAY VALUE SPACES.
          3 ZUT00000008.
            5 PIC X(10) DISPLAY VALUE SPACES.
          3 ZUT00000009.
            5 PIC X(20) DISPLAY VALUE SPACES.
          3 ZUT0000000A.
            5 PIC X(4) DISPLAY VALUE SPACES.
          3 ZUT0000000B.
            5 PIC X(8) DISPLAY VALUE SPACES.
          3 ZUT0000000C.
            5 PIC X(20) DISPLAY VALUE SPACES.
          3 ZUT0000000D.
            5 PIC X(20) DISPLAY VALUE SPACES.
          3 ZUT0000000E.
            5 PIC X(100) DISPLAY VALUE SPACES.
          3 ZUT0000000F.
            5 PIC X(32267) DISPLAY VALUE SPACES.
       01 AZ-COMPARE.
         03 AZ-COMPARE-ITEM-NAME-PTR  POINTER.
         03 AZ-COMPARE-ITEM-NAME-LEN  PIC S9(9) COMP-5.
         03 AZ-COMPARE-ITEM-VALUE-PTR POINTER.
         03 AZ-COMPARE-ITEM-VALUE-LEN PIC S9(9) COMP-5.
         03 AZ-COMPARE-ITEM-EXP-VALUE-PTR POINTER.
         03 AZ-COMPARE-ITEM-EXP-VALUE-LEN PIC S9(9) COMP-5.
       LOCAL-STORAGE SECTION.
       1 AZ-COMPARE-ITEM-NAMES.
         3 ZUT00000010.
            5 PIC X(20) DISPLAY VALUE 'CA-RETURN-CODE OF DF'.
            5 PIC X(9) DISPLAY VALUE 'HCOMMAREA'.
       1 AZ-COMPARE-WORK-ITEMS.
          3 ZUT00000011 PIC 9(2) OCCURS 2.
       LINKAGE SECTION.
       01 AZ-TEST                   PIC X(80).
       01 AZ-ARG-LIST.
         03 ARG-LENGTH PIC 9(4) COMP-4.
         03 ARG-DATA PIC X(256).
       01 AZ-COMPARE-ITEM-NAME      PIC X(254).
       01 AZ-COMPARE-ITEM-VALUE     PIC X(254).
       01 AZ-COMPARE-ITEM-EXP-VALUE PIC X(254).
       1 DFHEIBLK.
         2 EIBTIME PICTURE S9(7) USAGE COMPUTATIONAL-3.
          2 EIBTIME-AZ REDEFINES EIBTIME.
          3 PIC X(4) DISPLAY.
         2 EIBDATE PICTURE S9(7) USAGE COMPUTATIONAL-3.
          2 EIBDATE-AZ REDEFINES EIBDATE.
          3 PIC X(4) DISPLAY.
         2 EIBTRNID PICTURE X(4).
         2 EIBTASKN PICTURE S9(7) USAGE COMPUTATIONAL-3.
          2 EIBTASKN-AZ REDEFINES EIBTASKN.
          3 PIC X(4) DISPLAY.
         2 EIBTRMID PICTURE X(4).
         2 DFHEIGDI PICTURE S9(4) USAGE COMPUTATIONAL-5.
         2 EIBCPOSN PICTURE S9(4) USAGE COMPUTATIONAL-5.
         2 EIBCALEN PICTURE S9(4) USAGE COMPUTATIONAL-5.
         2 EIBAID PICTURE X(1).
         2 EIBFN PICTURE X(2).
          2 EIBFN-AZ REDEFINES EIBFN.
          3 PIC X(2) DISPLAY.
         2 EIBRCODE PICTURE X(6).
         2 EIBDS PICTURE X(8).
         2 EIBREQID PICTURE X(8).
         2 EIBRSRCE PICTURE X(8).
         2 EIBSYNC PICTURE X.
         2 EIBFREE PICTURE X.
         2 EIBRECV PICTURE X.
         2 EIBSEND PICTURE X.
         2 EIBATT PICTURE X.
         2 EIBEOC PICTURE X.
         2 EIBFMH PICTURE X.
         2 EIBCOMPL PICTURE X(1).
         2 EIBSIG PICTURE X(1).
         2 EIBCONF PICTURE X(1).
         2 EIBERR PICTURE X(1).
         2 EIBERRCD PICTURE X(4).
         2 EIBSYNRB PICTURE X.
         2 EIBNODAT PICTURE X.
         2 EIBRESP PICTURE S9(8) USAGE COMPUTATIONAL.
         2 EIBRESP2 PICTURE S9(8) USAGE COMPUTATIONAL.
         2 EIBRLDBK PICTURE X(1).
       1 DFHCOMMAREA.
         3 CA-REQUEST-ID PIC X(6).
         3 CA-RETURN-CODE PIC 9(2).
         3 CA-CUSTOMER-NUM PIC 9(10).
         3 CA-REQUEST-SPECIFIC PIC X(32482).
         3 CA-CUSTOMER-REQUEST REDEFINES CA-REQUEST-SPECIFIC.
         5 CA-FIRST-NAME PIC X(10).
         5 CA-LAST-NAME PIC X(20).
         5 CA-DOB PIC X(10).
         5 CA-HOUSE-NAME PIC X(20).
         5 CA-HOUSE-NUM PIC X(4).
         5 CA-POSTCODE PIC X(8).
         5 CA-NUM-POLICIES PIC 9(3).
         5 CA-PHONE-MOBILE PIC X(20).
         5 CA-PHONE-HOME PIC X(20).
         5 CA-EMAIL-ADDRESS PIC X(100).
         5 CA-POLICY-DATA PIC X(32267).
         3 CA-CUSTSECR-REQUEST REDEFINES CA-REQUEST-SPECIFIC.
         5 CA-CUSTSECR-PASS PIC X(32).
         5 CA-CUSTSECR-COUNT PIC X(4).
         5 CA-CUSTSECR-STATE PIC X.
         5 CA-CUSTSECR-DATA PIC X(32445).
         3 CA-POLICY-REQUEST REDEFINES CA-REQUEST-SPECIFIC.
         5 CA-POLICY-NUM PIC 9(10).
         5 CA-POLICY-COMMON.
         7 CA-ISSUE-DATE PIC X(10).
         7 CA-EXPIRY-DATE PIC X(10).
         7 CA-LASTCHANGED PIC X(26).
         7 CA-BROKERID PIC 9(10).
         7 CA-BROKERSREF PIC X(10).
         7 CA-PAYMENT PIC 9(6).
         5 CA-POLICY-SPECIFIC PIC X(32400).
         5 CA-ENDOWMENT REDEFINES CA-POLICY-SPECIFIC.
         7 CA-E-WITH-PROFITS PIC X.
         7 CA-E-EQUITIES PIC X.
         7 CA-E-MANAGED-FUND PIC X.
         7 CA-E-FUND-NAME PIC X(10).
         7 CA-E-TERM PIC 99.
         7 CA-E-SUM-ASSURED PIC 9(6).
         7 CA-E-LIFE-ASSURED PIC X(31).
         7 CA-E-PADDING-DATA PIC X(32348).
         5 CA-HOUSE REDEFINES CA-POLICY-SPECIFIC.
         7 CA-H-PROPERTY-TYPE PIC X(15).
         7 CA-H-BEDROOMS PIC 9(3).
         7 CA-H-VALUE PIC 9(8).
         7 CA-H-HOUSE-NAME PIC X(20).
         7 CA-H-HOUSE-NUMBER PIC X(4).
         7 CA-H-POSTCODE PIC X(8).
         7 CA-H-FILLER PIC X(32342).
         5 CA-MOTOR REDEFINES CA-POLICY-SPECIFIC.
         7 CA-M-MAKE PIC X(15).
         7 CA-M-MODEL PIC X(15).
         7 CA-M-VALUE PIC 9(6).
         7 CA-M-REGNUMBER PIC X(7).
         7 CA-M-COLOUR PIC X(8).
         7 CA-M-CC PIC 9(4).
         7 CA-M-MANUFACTURED PIC X(10).
         7 CA-M-PREMIUM PIC 9(6).
         7 CA-M-ACCIDENTS PIC 9(6).
         7 CA-M-FILLER PIC X(32323).
         5 CA-COMMERCIAL REDEFINES CA-POLICY-SPECIFIC.
         7 CA-B-ADDRESS PIC X(255).
         7 CA-B-POSTCODE PIC X(8).
         7 CA-B-LATITUDE PIC X(11).
         7 CA-B-LONGITUDE PIC X(11).
         7 CA-B-CUSTOMER PIC X(255).
         7 CA-B-PROPTYPE PIC X(255).
         7 CA-B-FIREPERIL PIC 9(4).
         7 CA-B-FIREPREMIUM PIC 9(8).
         7 CA-B-CRIMEPERIL PIC 9(4).
         7 CA-B-CRIMEPREMIUM PIC 9(8).
         7 CA-B-FLOODPERIL PIC 9(4).
         7 CA-B-FLOODPREMIUM PIC 9(8).
         7 CA-B-WEATHERPERIL PIC 9(4).
         7 CA-B-WEATHERPREMIUM PIC 9(8).
         7 CA-B-STATUS PIC 9(4).
         7 CA-B-REJECTREASON PIC X(255).
         7 CA-B-FILLER PIC X(31298).
         5 CA-CLAIM REDEFINES CA-POLICY-SPECIFIC.
         7 CA-C-NUM PIC 9(10).
         7 CA-C-DATE PIC X(10).
         7 CA-C-PAID PIC 9(8).
         7 CA-C-VALUE PIC 9(8).
         7 CA-C-CAUSE PIC X(255).
         7 CA-C-OBSERVATIONS PIC X(255).
         7 CA-C-FILLER PIC X(31854).
       PROCEDURE DIVISION USING AZ-TEST
           DFHEIBLK DFHCOMMAREA.
      * START
           DISPLAY 'TEST_SQLC913 STARTED...'
           MOVE 0 TO AZ-TEST-NAME-LEN.
           INSPECT AZ-TEST TALLYING AZ-TEST-NAME-LEN FOR
           CHARACTERS BEFORE INITIAL SPACE.
      * INITIALIZE PARAMETER
           PERFORM INITIALIZE-PARM
      * SET AREA ADDRESS TO POINTER
      * SET INPUT VALUE
           MOVE 0 TO RETURN-CODE.
           MOVE 72438 TO EIBTIME OF DFHEIBLK
           MOVE 120301 TO EIBDATE OF DFHEIBLK
           MOVE ZUT00000000 TO EIBTRNID OF DFHEIBLK
           MOVE 94905 TO EIBTASKN OF DFHEIBLK
           MOVE ZUT00000001 TO EIBTRMID OF DFHEIBLK
           MOVE 0 TO DFHEIGDI OF DFHEIBLK
           MOVE 1848 TO EIBCPOSN OF DFHEIBLK
           MOVE 32500 TO EIBCALEN OF DFHEIBLK
           MOVE ZUT00000002 TO EIBAID OF DFHEIBLK
           MOVE ZUT00000003 TO EIBFN-AZ OF DFHEIBLK
           MOVE ZUT00000004 TO EIBRSRCE OF DFHEIBLK
           MOVE 0 TO EIBRESP OF DFHEIBLK
           MOVE 0 TO EIBRESP2 OF DFHEIBLK
           MOVE ZUT00000005 TO CA-REQUEST-ID OF DFHCOMMAREA
           MOVE 0 TO CA-RETURN-CODE OF DFHCOMMAREA
           MOVE 1 TO CA-CUSTOMER-NUM OF DFHCOMMAREA
           MOVE ZUT00000006 TO CA-FIRST-NAME OF CA-CUSTOMER-REQUEST OF
           DFHCOMMAREA
           MOVE ZUT00000007 TO CA-LAST-NAME OF CA-CUSTOMER-REQUEST OF
           DFHCOMMAREA
           MOVE ZUT00000008 TO CA-DOB OF CA-CUSTOMER-REQUEST OF
           DFHCOMMAREA
           MOVE ZUT00000009 TO CA-HOUSE-NAME OF CA-CUSTOMER-REQUEST OF
           DFHCOMMAREA
           MOVE ZUT0000000A TO CA-HOUSE-NUM OF CA-CUSTOMER-REQUEST OF
           DFHCOMMAREA
           MOVE ZUT0000000B TO CA-POSTCODE OF CA-CUSTOMER-REQUEST OF
           DFHCOMMAREA
           MOVE 0 TO CA-NUM-POLICIES OF CA-CUSTOMER-REQUEST OF
           DFHCOMMAREA
           MOVE ZUT0000000C TO CA-PHONE-MOBILE OF CA-CUSTOMER-REQUEST
           OF DFHCOMMAREA
           MOVE ZUT0000000D TO CA-PHONE-HOME OF CA-CUSTOMER-REQUEST OF
           DFHCOMMAREA
           MOVE ZUT0000000E TO CA-EMAIL-ADDRESS OF CA-CUSTOMER-REQUEST
           OF DFHCOMMAREA
           MOVE ZUT0000000F TO CA-POLICY-DATA OF CA-CUSTOMER-REQUEST
           OF DFHCOMMAREA
      * CALL TEST PROGRAM
           DISPLAY 'CALL LGICDB01'
           CALL PROGRAM-NAME
           USING DFHEIBLK DFHCOMMAREA
           .
      * EVALUATE OUTPUT VALUE
           MOVE 0 TO RETURN-CODE
           IF (CA-RETURN-CODE OF DFHCOMMAREA IS NUMERIC)
               AND (CA-RETURN-CODE OF DFHCOMMAREA = 02) THEN
             CONTINUE
           ELSE
             MOVE CA-RETURN-CODE OF DFHCOMMAREA TO ZUT00000011(1)
             MOVE 02 TO ZUT00000011(2)
             SET AZ-COMPARE-ITEM-NAME-PTR TO ADDRESS OF ZUT00000010
             MOVE LENGTH OF ZUT00000010 TO AZ-COMPARE-ITEM-NAME-LEN
             SET AZ-COMPARE-ITEM-VALUE-PTR TO ADDRESS OF ZUT00000011(1)
             MOVE 2 TO AZ-COMPARE-ITEM-VALUE-LEN
             SET AZ-COMPARE-ITEM-EXP-VALUE-PTR TO ADDRESS OF
           ZUT00000011(2)
             MOVE 2 TO AZ-COMPARE-ITEM-EXP-VALUE-LEN
             PERFORM THROW-ASSERTION
           END-IF
      * END
           DISPLAY 'TEST_SQLC913 SUCCESSFUL.'
           GOBACK.
       INITIALIZE-PARM.
           EXIT.
       THROW-ASSERTION.
           MOVE 1 TO MESSAGE-LEN OF BZ-ASSERT
           STRING 'COMPARE FAILED IN PROCEDURE DIVISION.'
             DELIMITED BY SIZE INTO MESSAGE-TXT OF BZ-ASSERT
             WITH POINTER MESSAGE-LEN OF BZ-ASSERT
           END-STRING
           SUBTRACT 1 FROM MESSAGE-LEN OF BZ-ASSERT
           SET ADDRESS OF AZ-COMPARE-ITEM-NAME TO
           AZ-COMPARE-ITEM-NAME-PTR.
           SET ADDRESS OF AZ-COMPARE-ITEM-VALUE TO
           AZ-COMPARE-ITEM-VALUE-PTR.
           SET ADDRESS OF AZ-COMPARE-ITEM-EXP-VALUE TO
           AZ-COMPARE-ITEM-EXP-VALUE-PTR.
           DISPLAY '****************************************************
      -    '****************************'
           DISPLAY 'AZU2001W THE TEST "' AZ-TEST(1:AZ-TEST-NAME-LEN) '"
      -    'FAILED DUE TO AN ASSERTION.'
           DISPLAY 'AZU1101I ' MESSAGE-TXT OF BZ-ASSERT(1:MESSAGE-LEN
           OF BZ-ASSERT)
           DISPLAY ' DATA ITEM NAME : '
           AZ-COMPARE-ITEM-NAME(1:AZ-COMPARE-ITEM-NAME-LEN)
           DISPLAY '  VALUE         : '
           AZ-COMPARE-ITEM-VALUE(1:AZ-COMPARE-ITEM-VALUE-LEN)
           DISPLAY '  EXPECTED VALUE: '
           AZ-COMPARE-ITEM-EXP-VALUE(1:AZ-COMPARE-ITEM-EXP-VALUE-LEN)
           DISPLAY '****************************************************
      -    '****************************'
           CALL BZUASSRT USING BZ-P1 BZ-P2 BZ-P3 BZ-ASSERT
           MOVE 1 TO TRACE-LEN OF BZ-TRACE
           STRING 'ITEM NAME='
           AZ-COMPARE-ITEM-NAME(1:AZ-COMPARE-ITEM-NAME-LEN)
               DELIMITED BY SIZE INTO TRACE-TXT OF BZ-TRACE
               WITH POINTER TRACE-LEN OF BZ-TRACE
             END-STRING
           SUBTRACT 1 FROM TRACE-LEN OF BZ-TRACE
           SET AZ-TRACE-PTR TO ADDRESS OF TRACE-TXT OF BZ-TRACE
      *     CALL 'XCHRFLTR' USING TRACE-LEN OF BZ-TRACE AZ-TRACE-PTR
           CALL BZUTRACE USING BZ-TRACE
           MOVE 1 TO TRACE-LEN OF BZ-TRACE
           STRING 'VALUE='
           AZ-COMPARE-ITEM-VALUE(1:AZ-COMPARE-ITEM-VALUE-LEN)
               DELIMITED BY SIZE INTO TRACE-TXT OF BZ-TRACE
               WITH POINTER TRACE-LEN OF BZ-TRACE
             END-STRING
           SUBTRACT 1 FROM TRACE-LEN OF BZ-TRACE
      *     CALL 'XCHRFLTR' USING TRACE-LEN OF BZ-TRACE AZ-TRACE-PTR
           CALL BZUTRACE USING BZ-TRACE
           MOVE 1 TO TRACE-LEN OF BZ-TRACE
           STRING 'EXPECTED VALUE='
           AZ-COMPARE-ITEM-EXP-VALUE(1:AZ-COMPARE-ITEM-EXP-VALUE-LEN)
               DELIMITED BY SIZE INTO TRACE-TXT OF BZ-TRACE
               WITH POINTER TRACE-LEN OF BZ-TRACE
             END-STRING
           SUBTRACT 1 FROM TRACE-LEN OF BZ-TRACE
      *     CALL 'XCHRFLTR' USING TRACE-LEN OF BZ-TRACE AZ-TRACE-PTR
           CALL BZUTRACE USING BZ-TRACE
           EXIT.
       END PROGRAM TEST_SQLC913.
      *+---------------------------------------------------------------+
      *| BZU_INIT                                                      |
      *|     INITIAL PROCEDURE                                         |
      *+---------------------------------------------------------------+
       IDENTIFICATION DIVISION.
       PROGRAM-ID. 'BZU_INIT'.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 AZ-TEST-NAME-LEN      PIC S9(9) COMP-5.
       01 AZ-TESTCASE-ID        PIC X(36)
           VALUE '7ccdfbd6-1f73-4680-a48e-298e3e67ff49'.
       LINKAGE SECTION.
       01 AZ-TEST               PIC X(80).
       01 AZ-TEST-ID            PIC X(80).
       PROCEDURE DIVISION USING AZ-TEST AZ-TEST-ID.
           MOVE 0 TO AZ-TEST-NAME-LEN.
           INSPECT AZ-TEST TALLYING AZ-TEST-NAME-LEN FOR
           CHARACTERS BEFORE INITIAL SPACE.
           DISPLAY 'BZU_INIT : ' AZ-TEST(1:AZ-TEST-NAME-LEN)
           MOVE AZ-TESTCASE-ID TO AZ-TEST-ID
           GOBACK.
       END PROGRAM BZU_INIT.
      *+---------------------------------------------------------------+
      *| BZU_TERM                                                      |
      *|     TERMINATION PROCEDURE                                     |
      *+---------------------------------------------------------------+
       IDENTIFICATION DIVISION.
       PROGRAM-ID. 'BZU_TERM'.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 AZ-TEST-NAME-LEN      PIC S9(9) COMP-5.
       LINKAGE SECTION.
       01 AZ-TEST               PIC X(80).
       PROCEDURE DIVISION USING AZ-TEST.
           MOVE 0 TO AZ-TEST-NAME-LEN.
           INSPECT AZ-TEST TALLYING AZ-TEST-NAME-LEN FOR
           CHARACTERS BEFORE INITIAL SPACE.
           DISPLAY 'BZU_TERM : ' AZ-TEST(1:AZ-TEST-NAME-LEN)
           GOBACK.
       END PROGRAM BZU_TERM.
      *+---------------------------------------------------------------+
      *| XCHRFLTR                                                      |
      *|     XML CHARACTER FILTER                                      |
      *|     REPLACE ILLEGAL XML CHARACTER WITH SPACE                  |
      *+---------------------------------------------------------------+
       IDENTIFICATION DIVISION.
       PROGRAM-ID. 'XCHRFLTR'.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       1 X00000030.
       2 PIC X(24) USAGE DISPLAY
           VALUE X'0001020304060708090A0B0C0E0F1011121314161718191A'.
       2 PIC X(24) USAGE DISPLAY
           VALUE X'1B1C1D1E1F2021222324262728292A2B2C2D2E2F30313233'.
       2 PIC X(13) USAGE DISPLAY
           VALUE X'3435363738393A3B3C3D3E3FFF'.
       1 ILLEGAL-XML-CHARS REDEFINES X00000030
           PIC X(61).
       01 E-QUOT PIC X(6) VALUE '&quot;'.
       LOCAL-STORAGE SECTION.
       1 W-TXT       PIC X(254) VALUE SPACES.
       1 W-N         PIC 9(3) BINARY VALUE 0.
       1 W-IN-I      PIC 9(3) BINARY VALUE 0.
       1 W-OUT-I     PIC 9(3) BINARY VALUE 1.
       LINKAGE SECTION.
       1 CONTENT-LEN PIC S9(4) COMP-4.
       1 CONTENT-PTR POINTER.
       1 CONTENT-TXT PIC X(254).
       PROCEDURE DIVISION USING CONTENT-LEN CONTENT-PTR.
       MAINLINE SECTION.
           SET ADDRESS OF CONTENT-TXT TO CONTENT-PTR
           INSPECT CONTENT-TXT(1:CONTENT-LEN) CONVERTING
            ILLEGAL-XML-CHARS TO SPACES
           PERFORM VARYING W-IN-I FROM 1 BY 1
             UNTIL W-IN-I > CONTENT-LEN
             EVALUATE CONTENT-TXT(W-IN-I:1)
             WHEN '"'
               MOVE LENGTH OF E-QUOT TO W-N
               MOVE E-QUOT TO W-TXT(W-OUT-I:W-N)
             WHEN OTHER
               MOVE 1 TO W-N
               MOVE CONTENT-TXT(W-IN-I:1) TO W-TXT(W-OUT-I:1)
             END-EVALUATE
             ADD W-N TO W-OUT-I
           END-PERFORM
           MOVE W-TXT(1:W-OUT-I) TO CONTENT-TXT(1:W-OUT-I)
           SUBTRACT 1 FROM W-OUT-I
           MOVE W-OUT-I TO CONTENT-LEN
           GOBACK.
       END PROGRAM 'XCHRFLTR'.
      *+---------------------------------------------------------------+
      *| EVALOPT                                                       |
      *|   FUNCTION TO EVALUATE THAT THE BIT OF OPTION DATA            |
      *|   (1) TAKE AND OF GROUP COMMON MASK AND OPTION IN ARG0        |
      *|   (2) CHECK IF THE GROUP MASK IS EQUAL TO (1)                 |
      *|       IF EQUAL,    RTN01 IS 0                                 |
      *|       IF NO EQUAL, RTN01 IS 1                                 |
      *+---------------------------------------------------------------+
       ID DIVISION.
       PROGRAM-ID. EVALOPT.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  OUT1-REC.
         05 OUT1-DATA                PIC X(1) OCCURS 8.
       01 OUT1-DATA-R REDEFINES OUT1-REC.
         05 OUT1-DATA-UP             PIC X(4).
         05 OUT1-DATA-DOWN           PIC X(4).
       01  OUT2-REC.
         05  OUT2-DATA               PIC X(1) OCCURS 8.
       01  OUT2-DATA-R REDEFINES OUT2-REC.
         05 OUT2-DATA-UP             PIC X(4).
         05 OUT2-DATA-DOWN           PIC X(4).
       01  WORK1-REC.
         05  WORK1-DATA              PIC X(1) OCCURS 8.
       01  WORK1-DATA-R REDEFINES WORK1-REC.
         05 WORK1-DATA-UP            PIC X(4).
         05 WORK1-DATA-DOWN          PIC X(4).
       01  WORK-AREA.
         05  WORK-HEX-UP             PIC 9(4)  COMP.
         05  WORK-HEX-DOWN           PIC 9(4)  COMP.
       01  HEX-CHG-BEF.
         05  HEX-CHANGE-LV           PIC X(1) VALUE LOW-VALUE.
         05  HEX-CHANGE-BEFORE       PIC X(1).
       01  HEX-CHG-AFT      REDEFINES  HEX-CHG-BEF.
         05  HEX-CHANGE-AFTER        PIC 9(4)  COMP.
       01  TBL-CHANGE-DATA.
          05  FILLER                 PIC  X(004) VALUE '0000'.
          05  FILLER                 PIC  X(001) VALUE '0'.
          05  FILLER                 PIC  X(004) VALUE '0001'.
          05  FILLER                 PIC  X(001) VALUE '1'.
          05  FILLER                 PIC  X(004) VALUE '0010'.
          05  FILLER                 PIC  X(001) VALUE '2'.
          05  FILLER                 PIC  X(004) VALUE '0011'.
          05  FILLER                 PIC  X(001) VALUE '3'.
          05  FILLER                 PIC  X(004) VALUE '0100'.
          05  FILLER                 PIC  X(001) VALUE '4'.
          05  FILLER                 PIC  X(004) VALUE '0101'.
          05  FILLER                 PIC  X(001) VALUE '5'.
          05  FILLER                 PIC  X(004) VALUE '0110'.
          05  FILLER                 PIC  X(001) VALUE '6'.
          05  FILLER                 PIC  X(004) VALUE '0111'.
          05  FILLER                 PIC  X(001) VALUE '7'.
          05  FILLER                 PIC  X(004) VALUE '1000'.
          05  FILLER                 PIC  X(001) VALUE '8'.
          05  FILLER                 PIC  X(004) VALUE '1001'.
          05  FILLER                 PIC  X(001) VALUE '9'.
          05  FILLER                 PIC  X(004) VALUE '1010'.
          05  FILLER                 PIC  X(001) VALUE 'A'.
          05  FILLER                 PIC  X(004) VALUE '1011'.
          05  FILLER                 PIC  X(001) VALUE 'B'.
          05  FILLER                 PIC  X(004) VALUE '1100'.
          05  FILLER                 PIC  X(001) VALUE 'C'.
          05  FILLER                 PIC  X(004) VALUE '1101'.
          05  FILLER                 PIC  X(001) VALUE 'D'.
          05  FILLER                 PIC  X(004) VALUE '1110'.
          05  FILLER                 PIC  X(001) VALUE 'E'.
          05  FILLER                 PIC  X(004) VALUE '1111'.
          05  FILLER                 PIC  X(001) VALUE 'F'.
          01  TBL-DATA REDEFINES TBL-CHANGE-DATA.
           05  TBL-CHG  OCCURS  16 TIMES.
             10  TBL-BIT-CHAR        PIC  X(004).
             10  TBL-HEX-CHAR        PIC  X(001).
       01 BIT-COUNT                  PIC 9(1).
       01 I                          PIC S9(8) COMP.
       LINKAGE SECTION.
       01 G-MASK.
         03 D-G-MASK                 PIC X(1) OCCURS 19.
       01 COM-MASK.
         03 D-COM-MASK               PIC X(1) OCCURS 19.
       01 O-ARG0.
         03 D-O-ARG0                 PIC X(1) OCCURS 19.
       01 BYTE-COUNT                 PIC S9(8) COMP.
       01 RTN01                      PIC 9(1).
       PROCEDURE DIVISION USING G-MASK COM-MASK O-ARG0 BYTE-COUNT
            RTN01.
            MOVE 0 TO RTN01
            PERFORM VARYING I FROM 1 BY 1 UNTIL I > BYTE-COUNT
              PERFORM ANDCOMMASK
              IF RTN01 = 1 THEN
                GOBACK
              END-IF
            END-PERFORM.
            EXIT PROGRAM.
       ANDCOMMASK.
      * CONVERT GROUP COMMON MASK TO BIT
            MOVE D-COM-MASK(I) TO HEX-CHANGE-BEFORE.
            DIVIDE 16 INTO HEX-CHANGE-AFTER GIVING WORK-HEX-UP
                                         REMAINDER WORK-HEX-DOWN.
            MOVE TBL-BIT-CHAR(WORK-HEX-UP + 1)   TO OUT1-DATA-UP.
            MOVE TBL-BIT-CHAR(WORK-HEX-DOWN + 1) TO OUT1-DATA-DOWN.
      * CONVERT OPTION IN ARG0 TO BIT
            MOVE D-O-ARG0(I) TO HEX-CHANGE-BEFORE.
            DIVIDE 16 INTO HEX-CHANGE-AFTER GIVING WORK-HEX-UP
                                         REMAINDER WORK-HEX-DOWN.
            MOVE TBL-BIT-CHAR(WORK-HEX-UP + 1)   TO OUT2-DATA-UP.
            MOVE TBL-BIT-CHAR(WORK-HEX-DOWN + 1) TO OUT2-DATA-DOWN.
      * CREATE EVAL BIT FROM GROUP COMMON MASK BIT AND ARG0 BIT
            PERFORM VARYING BIT-COUNT FROM 1 BY 1 UNTIL BIT-COUNT > 8
              IF OUT1-DATA(BIT-COUNT) = '1' AND
                 OUT2-DATA(BIT-COUNT) = '1' THEN
                MOVE '1' TO WORK1-DATA(BIT-COUNT)
              ELSE
                MOVE '0' TO WORK1-DATA(BIT-COUNT)
              END-IF
            END-PERFORM.
      * CONVERT GROUP MASK TO BIT DATA
            MOVE D-G-MASK(I) TO HEX-CHANGE-BEFORE.
            DIVIDE 16 INTO HEX-CHANGE-AFTER GIVING WORK-HEX-UP
                                         REMAINDER WORK-HEX-DOWN.
            MOVE TBL-BIT-CHAR(WORK-HEX-UP + 1)   TO OUT1-DATA-UP.
            MOVE TBL-BIT-CHAR(WORK-HEX-DOWN + 1) TO OUT1-DATA-DOWN.
      * CHECK IF EQUAL BETWEEN EVAL BIT AND GROUP MASK BIT
            IF WORK1-DATA-UP = OUT1-DATA-UP AND
               WORK1-DATA-DOWN = OUT1-DATA-DOWN THEN
              CONTINUE
            ELSE
              MOVE 1 TO RTN01
            END-IF
            EXIT.
       END PROGRAM 'EVALOPT'.
      *+---------------------------------------------------------------+
      *| GTMEMRC                                                       |
      *|     GET DATA AREA FOR RECORD COUNT OF CICS/DB2 GROUP          |
      *+---------------------------------------------------------------+
       IDENTIFICATION DIVISION.
       PROGRAM-ID. 'GTMEMRC'.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 BZUGTMEM            PIC X(8) VALUE 'BZUGTMEM'.
       01 DATA-SIZE           PIC 9(8) COMP-4.
       LINKAGE SECTION.
       01 TC-WORK-AREA        PIC X(256).
       01 AZ-GRP-INDEX        PIC 9(8).
       01 AZ-FLAG-IN          PIC 9(1).
       01 AZ-RECORD-PTR       POINTER.
       01 AZ-RECORD-PTR-VALUE
            REDEFINES AZ-RECORD-PTR  PIC S9(9) COMP-5.
       01 DATA-PTR            POINTER.
       01 DATA-PTR-VALUE
            REDEFINES DATA-PTR  PIC S9(9) COMP-5.
       01 DATA-AREA.
         03 RECORD-COUNT-IO OCCURS 6.
           05 RECORD-COUNT-OT PIC 9(5) COMP-5.
           05 RECORD-COUNT-IN PIC 9(5) COMP-5.
       01 WK-RECORD-COUNT     PIC 9(5) COMP-5.
       PROCEDURE DIVISION USING TC-WORK-AREA AZ-GRP-INDEX AZ-FLAG-IN
           AZ-RECORD-PTR.
           SET ADDRESS OF DATA-PTR TO ADDRESS OF TC-WORK-AREA.
           IF DATA-PTR-VALUE = 0 THEN
             COMPUTE DATA-SIZE = LENGTH OF WK-RECORD-COUNT * 2 * 6
             CALL BZUGTMEM USING DATA-SIZE RETURNING DATA-PTR
             SET ADDRESS OF DATA-AREA TO DATA-PTR
             DISPLAY 'AREA ALLOCATED FOR RECORD COUNT:' DATA-SIZE
           END-IF
           SET AZ-RECORD-PTR TO DATA-PTR
           COMPUTE AZ-RECORD-PTR-VALUE = AZ-RECORD-PTR-VALUE +
                 LENGTH OF WK-RECORD-COUNT * 2 * (AZ-GRP-INDEX - 1)
           IF AZ-FLAG-IN = 1 THEN
             ADD LENGTH OF WK-RECORD-COUNT TO AZ-RECORD-PTR-VALUE
           END-IF
           SET ADDRESS OF WK-RECORD-COUNT TO AZ-RECORD-PTR
           GOBACK.
       END PROGRAM 'GTMEMRC'.
      *+---------------------------------------------------------------+
      *| AZU_GENERIC_CICS                                              |
      *|   GENERIC CICS CALLBACK EXIT POINT                            |
      *+---------------------------------------------------------------+
       IDENTIFICATION DIVISION.
       PROGRAM-ID. 'AZU_GENERIC_CICS'.
       PROCEDURE DIVISION.
      * CHECK OUTPUT VALUE
      * CICS_INPT.
           ENTRY 'CICS_INPT'.
           DISPLAY 'CICS_INPT ...'
           MOVE 0 TO RETURN-CODE.
           GOBACK.
      * CICS_OUTP.
           ENTRY 'CICS_OUTP'.
           DISPLAY 'CICS_OUTP ...'
           MOVE 0 TO RETURN-CODE.
           GOBACK.
      * CICS_INPT_0E08 FOR RETURN.
           ENTRY 'CICS_INPT_0E08'.
           DISPLAY 'CICS_INPT_0E08 ...'
           MOVE 0 TO RETURN-CODE.
           GOBACK.
       END PROGRAM 'AZU_GENERIC_CICS'.
      *+---------------------------------------------------------------+
      *| AZU_GENERIC_DB2                                               |
      *|   GENERIC DB2 CALLBACK EXIT POINT                             |
      *+---------------------------------------------------------------+
       IDENTIFICATION DIVISION.
       PROGRAM-ID. 'AZU_GENERIC_DB2'.
       PROCEDURE DIVISION.
      * CHECK OUTPUT VALUE
      * DB2_INPT.
           ENTRY 'DB2_INPT'.
           DISPLAY 'DB2_INPT ...'
           MOVE 0 TO RETURN-CODE.
           GOBACK.
      * DB2_OUTP.
           ENTRY 'DB2_OUTP'.
           DISPLAY 'DB2_OUTP ...'
           MOVE 0 TO RETURN-CODE.
           GOBACK.
       END PROGRAM 'AZU_GENERIC_DB2'.
      *+---------------------------------------------------------------+
      *| PROGRAM FOR EXEC CICS ABEND                                   |
      *|    FUNCTION CODE: 0E0C                                        |
      *|                                                               |
      *+---------------------------------------------------------------+
       IDENTIFICATION DIVISION.
       PROGRAM-ID. 'CICS_0E0C_LGICDB01'.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 BZ-ASSERT.
         03 MESSAGE-LEN PIC S9(4) COMP-4 VALUE 24.
         03 MESSAGE-TXT PIC X(254) VALUE 'HELLO FROM CICS CALLBACK'.
       01  BZ-P1 PIC S9(9) COMP-4 VALUE 4.
       01  BZ-P2 PIC S9(9) COMP-4 VALUE 2001.
       01  BZ-P3 PIC X(3) VALUE 'AZU'.
       01 BZ-TRACE.
         03 TRACE-LEN       PIC S9(4) COMP-4 VALUE 5.
         03 TRACE-TXT       PIC X(254) VALUE 'TRACE'.
       01 BZUASSRT          PIC X(8) VALUE 'BZUASSRT'.
       01 BZUTRACE          PIC X(8) VALUE 'BZUTRACE'.
       01 AZ-TRACE-PTR      POINTER.
       01 AZ-TEST-LEN       PIC S9(8) COMP.
       01 AZ-RECORD.
         03 AZ-RECORD-COUNT-OT OCCURS 1 PIC 9(5) COMP-5 VALUE 0.
         03 AZ-RECORD-COUNT-IN OCCURS 1 PIC 9(5) COMP-5 VALUE 0.
       01 AZ-GRP-INDEX       PIC 9(8).
       01 AZ-FLAG-IN         PIC 9(1).
       01 AZ-RECORD-PTR      POINTER.
       01 AZ-OPT-MASK-DATA2  PIC X(2).
       01 AZ-OPT-MASK-DATA9  PIC X(9).
       01 AZ-OPT-MASK-DATA11 PIC X(11).
       01 AZ-OPT-MASK-DATA19 PIC X(19).
       01 AZ-OPT-BYTECOUNT   PIC S9(8) COMP.
       01 AZ-OPT-RC          PIC 9(1) VALUE 0.
       01 AZ-OPT-COMMASK.
         03  AZ-OPT-COMMASK-DATA2  PIC X(2) OCCURS 1.
         03  AZ-OPT-COMMASK-DATA9  PIC X(9) OCCURS 1.
         03  AZ-OPT-COMMASK-DATA11 PIC X(11) OCCURS 1.
         03  AZ-OPT-COMMASK-DATA19 PIC X(19) OCCURS 1.
       01 AZ-LINE-BYTE      PIC S9(2) COMP.
       01 AZ-LINE-NUM       PIC 9(5).
       01 AZ-LINE-NUM-R   REDEFINES AZ-LINE-NUM.
         03 AZ-LINE-NUM-RD  PIC 9(1) OCCURS 5.
       01 AZ-LINE-I         PIC S9(8) COMP.
       01 AZ-LINE-J         PIC S9(8) COMP.
       LOCAL-STORAGE SECTION.
       LINKAGE SECTION.
       01 AZ-TEST                   PIC X(80).
       01 AZ-INFO-BLOCK.
          COPY BZUITERC.
       01 AZ-WK-RECORD-COUNT PIC 9(5) COMP-5.
       01 AZ-MODX                   PIC X(4).
       01 AZ-DFHEIBLK.
         03 FILLER                  PIC X(85).
       01 AZ-DFHCOMMAREA.
         03 FILLER                  PIC X(1).
       01 ARG0.
         03 ARG0-1        PIC X(2).
         03 ARG0-A        PIC X(28).
         03 ARG0-B REDEFINES ARG0-A.
           05 ARG0-2      PIC X(9).
           05 FILLER      PIC X(19).
         03 ARG0-C REDEFINES ARG0-A.
           05 FILLER      PIC X(6).
           05 ARG0-D.
             07 ARG0-3    PIC 9(1) OCCURS 22.
       01 ARG1            POINTER.
       01 AZ-CICS-TARGET-NAME-DEF4 PIC X(4).
       01 AZ-CICS-TARGET-NAME-DEF7 PIC X(7).
       01 AZ-CICS-TARGET-NAME-DEF8 PIC X(8).
       1 DFHEIBLK.
         2 EIBTIME PICTURE S9(7) USAGE COMPUTATIONAL-3.
         2 EIBDATE PICTURE S9(7) USAGE COMPUTATIONAL-3.
         2 EIBTRNID PICTURE X(4).
         2 EIBTASKN PICTURE S9(7) USAGE COMPUTATIONAL-3.
         2 EIBTRMID PICTURE X(4).
         2 DFHEIGDI PICTURE S9(4) USAGE COMPUTATIONAL-5.
         2 EIBCPOSN PICTURE S9(4) USAGE COMPUTATIONAL-5.
         2 EIBCALEN PICTURE S9(4) USAGE COMPUTATIONAL-5.
         2 EIBAID PICTURE X(1).
         2 EIBFN PICTURE X(2).
         2 EIBRCODE PICTURE X(6).
         2 EIBDS PICTURE X(8).
         2 EIBREQID PICTURE X(8).
         2 EIBRSRCE PICTURE X(8).
         2 EIBSYNC PICTURE X.
         2 EIBFREE PICTURE X.
         2 EIBRECV PICTURE X.
         2 EIBSEND PICTURE X.
         2 EIBATT PICTURE X.
         2 EIBEOC PICTURE X.
         2 EIBFMH PICTURE X.
         2 EIBCOMPL PICTURE X(1).
         2 EIBSIG PICTURE X(1).
         2 EIBCONF PICTURE X(1).
         2 EIBERR PICTURE X(1).
         2 EIBERRCD PICTURE X(4).
         2 EIBSYNRB PICTURE X.
         2 EIBNODAT PICTURE X.
         2 EIBRESP PICTURE S9(8) USAGE COMPUTATIONAL.
         2 EIBRESP2 PICTURE S9(8) USAGE COMPUTATIONAL.
         2 EIBRLDBK PICTURE X(1).
       PROCEDURE DIVISION.
      * CHECK OUTPUT VALUE
      * CICS_INPT_0E0C_LGICDB01.
           ENTRY 'CICS_INPT_0E0C_LGICDB01' USING AZ-TEST
           AZ-INFO-BLOCK DFHEIBLK AZ-DFHCOMMAREA ARG0 ARG1.
           DISPLAY 'CICS_0E0C_LGICDB01 CHECK VALUES...'
           MOVE 4 TO RETURN-CODE.
           MOVE 0 TO AZ-TEST-LEN.
           INSPECT AZ-TEST TALLYING AZ-TEST-LEN FOR
           CHARACTERS BEFORE INITIAL SPACE.
      * SET GROUP OPTION COMMON MASK IN CICS GROUP
           MOVE X'8000' TO AZ-OPT-COMMASK-DATA2(1).
      * EXEC CICS ABEND X'8000'
           IF ARG0-1 = X'0E0C'
             MOVE X'8000' TO AZ-OPT-MASK-DATA2
             MOVE 2 TO AZ-OPT-BYTECOUNT
             CALL 'EVALOPT' USING AZ-OPT-MASK-DATA2
               AZ-OPT-COMMASK-DATA2(1) ARG0-2
               AZ-OPT-BYTECOUNT AZ-OPT-RC
             IF AZ-OPT-RC = 0 THEN
               MOVE 3 TO AZ-LINE-BYTE
               PERFORM GETLINENUM
               DISPLAY 'EXEC CICS ABEND X''8000'''
                ' L=' AZ-LINE-NUM
             END-IF
           END-IF.
           PERFORM TEARDOWN.
      * SET INPUT VALUE
      * CICS_OUTP_0E0C_LGICDB01.
           ENTRY 'CICS_OUTP_0E0C_LGICDB01' USING AZ-TEST
           AZ-INFO-BLOCK DFHEIBLK AZ-DFHCOMMAREA ARG0 ARG1.
           DISPLAY 'CICS_0E0C_LGICDB01 INPUT VALUES...'
           MOVE 0 TO RETURN-CODE.
           MOVE 0 TO AZ-TEST-LEN.
           INSPECT AZ-TEST TALLYING AZ-TEST-LEN FOR
           CHARACTERS BEFORE INITIAL SPACE.
      * SET GROUP OPTION COMMON MASK IN CICS GROUP
           MOVE X'8000' TO AZ-OPT-COMMASK-DATA2(1).
      * EXEC CICS ABEND X'8000'
           IF ARG0-1 = X'0E0C'
             MOVE X'8000' TO AZ-OPT-MASK-DATA2
             MOVE 2 TO AZ-OPT-BYTECOUNT
             CALL 'EVALOPT' USING AZ-OPT-MASK-DATA2
               AZ-OPT-COMMASK-DATA2(1) ARG0-2
               AZ-OPT-BYTECOUNT AZ-OPT-RC
             IF AZ-OPT-RC = 0 THEN
               MOVE 3 TO AZ-LINE-BYTE
               PERFORM GETLINENUM
               DISPLAY 'EXEC CICS ABEND X''8000'''
                ' L=' AZ-LINE-NUM
             END-IF
           END-IF.
           PERFORM TEARDOWN.
       GETLINENUM.
           MOVE 1 TO AZ-LINE-J
           PERFORM VARYING AZ-LINE-I FROM AZ-LINE-BYTE BY 1
             UNTIL AZ-LINE-I > AZ-LINE-BYTE + 5
             MOVE ARG0-3(AZ-LINE-I) TO AZ-LINE-NUM-RD(AZ-LINE-J)
             ADD 1 TO AZ-LINE-J
           END-PERFORM
           EXIT.
       TEARDOWN.
           DISPLAY 'CICS_0E0C_LGICDB01 SUCCESSFUL.'
           GOBACK.
       END PROGRAM 'CICS_0E0C_LGICDB01'.
      *+---------------------------------------------------------------+
      *| PROGRAM FOR EXEC CICS RETURN                                  |
      *|    FUNCTION CODE: 0E08                                        |
      *|                                                               |
      *+---------------------------------------------------------------+
       IDENTIFICATION DIVISION.
       PROGRAM-ID. 'CICS_0E08_LGICDB01'.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 BZ-ASSERT.
         03 MESSAGE-LEN PIC S9(4) COMP-4 VALUE 24.
         03 MESSAGE-TXT PIC X(254) VALUE 'HELLO FROM CICS CALLBACK'.
       01  BZ-P1 PIC S9(9) COMP-4 VALUE 4.
       01  BZ-P2 PIC S9(9) COMP-4 VALUE 2001.
       01  BZ-P3 PIC X(3) VALUE 'AZU'.
       01 BZ-TRACE.
         03 TRACE-LEN       PIC S9(4) COMP-4 VALUE 5.
         03 TRACE-TXT       PIC X(254) VALUE 'TRACE'.
       01 BZUASSRT          PIC X(8) VALUE 'BZUASSRT'.
       01 BZUTRACE          PIC X(8) VALUE 'BZUTRACE'.
       01 AZ-TRACE-PTR      POINTER.
       01 AZ-TEST-LEN       PIC S9(8) COMP.
       01 AZ-RECORD.
         03 AZ-RECORD-COUNT-OT OCCURS 1 PIC 9(5) COMP-5 VALUE 0.
         03 AZ-RECORD-COUNT-IN OCCURS 1 PIC 9(5) COMP-5 VALUE 0.
       01 AZ-GRP-INDEX       PIC 9(8).
       01 AZ-FLAG-IN         PIC 9(1).
       01 AZ-RECORD-PTR      POINTER.
       01 AZ-OPT-MASK-DATA2  PIC X(2).
       01 AZ-OPT-MASK-DATA9  PIC X(9).
       01 AZ-OPT-MASK-DATA11 PIC X(11).
       01 AZ-OPT-MASK-DATA19 PIC X(19).
       01 AZ-OPT-BYTECOUNT   PIC S9(8) COMP.
       01 AZ-OPT-RC          PIC 9(1) VALUE 0.
       01 AZ-OPT-COMMASK.
         03  AZ-OPT-COMMASK-DATA2  PIC X(2) OCCURS 1.
         03  AZ-OPT-COMMASK-DATA9  PIC X(9) OCCURS 1.
         03  AZ-OPT-COMMASK-DATA11 PIC X(11) OCCURS 1.
         03  AZ-OPT-COMMASK-DATA19 PIC X(19) OCCURS 1.
       01 AZ-LINE-BYTE      PIC S9(2) COMP.
       01 AZ-LINE-NUM       PIC 9(5).
       01 AZ-LINE-NUM-R   REDEFINES AZ-LINE-NUM.
         03 AZ-LINE-NUM-RD  PIC 9(1) OCCURS 5.
       01 AZ-LINE-I         PIC S9(8) COMP.
       01 AZ-LINE-J         PIC S9(8) COMP.
       LOCAL-STORAGE SECTION.
       LINKAGE SECTION.
       01 AZ-TEST                   PIC X(80).
       01 AZ-INFO-BLOCK.
          COPY BZUITERC.
       01 AZ-WK-RECORD-COUNT PIC 9(5) COMP-5.
       01 AZ-MODX                   PIC X(4).
       01 AZ-DFHEIBLK.
         03 FILLER                  PIC X(85).
       01 AZ-DFHCOMMAREA.
         03 FILLER                  PIC X(1).
       01 ARG0.
         03 ARG0-1        PIC X(2).
         03 ARG0-A        PIC X(28).
         03 ARG0-B REDEFINES ARG0-A.
           05 ARG0-2      PIC X(9).
           05 FILLER      PIC X(19).
         03 ARG0-C REDEFINES ARG0-A.
           05 FILLER      PIC X(6).
           05 ARG0-D.
             07 ARG0-3    PIC 9(1) OCCURS 22.
       01 ARG1            POINTER.
       01 ARG2            POINTER.
       01 ARG3            POINTER.
       01 ARG4            POINTER.
       01 ARG5            POINTER.
       01 ARG6            POINTER.
       01 ARG7            POINTER.
       01 ARG8            POINTER.
       01 ARG9            POINTER.
       01 ARG10           POINTER.
       01 AZ-CICS-TARGET-NAME-DEF4 PIC X(4).
       01 AZ-CICS-TARGET-NAME-DEF7 PIC X(7).
       01 AZ-CICS-TARGET-NAME-DEF8 PIC X(8).
       PROCEDURE DIVISION.
      * CHECK OUTPUT VALUE
      * CICS_INPT_0E08_LGICDB01.
           ENTRY 'CICS_INPT_0E08_LGICDB01' USING AZ-TEST
           AZ-INFO-BLOCK AZ-DFHEIBLK AZ-DFHCOMMAREA ARG0 ARG1 ARG2
           ARG3 ARG4 ARG5 ARG6 ARG7 ARG8 ARG9 ARG10.
           DISPLAY 'CICS_0E08_LGICDB01 CHECK VALUES...'
           MOVE 4 TO RETURN-CODE.
           MOVE 0 TO AZ-TEST-LEN.
           INSPECT AZ-TEST TALLYING AZ-TEST-LEN FOR
           CHARACTERS BEFORE INITIAL SPACE.
      * SET GROUP OPTION COMMON MASK IN CICS GROUP
           MOVE X'0000' TO AZ-OPT-COMMASK-DATA2(1).
      * EXEC CICS RETURN X'0000'
           IF ARG0-1 = X'0E08'
             MOVE X'0000' TO AZ-OPT-MASK-DATA2
             MOVE 2 TO AZ-OPT-BYTECOUNT
             CALL 'EVALOPT' USING AZ-OPT-MASK-DATA2
               AZ-OPT-COMMASK-DATA2(1) ARG0-2
               AZ-OPT-BYTECOUNT AZ-OPT-RC
             IF AZ-OPT-RC = 0 THEN
               MOVE 3 TO AZ-LINE-BYTE
               PERFORM GETLINENUM
               DISPLAY 'EXEC CICS RETURN X''0000'''
                ' L=' AZ-LINE-NUM
               MOVE 2 TO AZ-GRP-INDEX
               MOVE 0 TO AZ-FLAG-IN
               CALL 'GTMEMRC' USING TC-WORK-AREA OF AZ-INFO-BLOCK
                 AZ-GRP-INDEX AZ-FLAG-IN AZ-RECORD-PTR
               SET ADDRESS OF AZ-WK-RECORD-COUNT TO AZ-RECORD-PTR
               ADD 1 TO AZ-WK-RECORD-COUNT
               MOVE AZ-WK-RECORD-COUNT TO AZ-RECORD-COUNT-OT(1)
               EVALUATE AZ-TEST(1:AZ-TEST-LEN)
                 WHEN SPACE
                   CONTINUE
                 WHEN 'SQLC913'
                   PERFORM O0E080-SQLC913
                   CONTINUE
                 WHEN OTHER
                   CONTINUE
                 END-EVALUATE
             END-IF
           END-IF.
           PERFORM TEARDOWN.
      * SET INPUT VALUE
      * CICS_OUTP_0E08_LGICDB01.
           ENTRY 'CICS_OUTP_0E08_LGICDB01' USING AZ-TEST
           AZ-INFO-BLOCK AZ-DFHEIBLK AZ-DFHCOMMAREA ARG0 ARG1 ARG2
           ARG3 ARG4 ARG5 ARG6 ARG7 ARG8 ARG9 ARG10.
           DISPLAY 'CICS_0E08_LGICDB01 INPUT VALUES...'
           MOVE 0 TO RETURN-CODE.
           MOVE 0 TO AZ-TEST-LEN.
           INSPECT AZ-TEST TALLYING AZ-TEST-LEN FOR
           CHARACTERS BEFORE INITIAL SPACE.
      * SET GROUP OPTION COMMON MASK IN CICS GROUP
           MOVE X'0000' TO AZ-OPT-COMMASK-DATA2(1).
      * EXEC CICS RETURN X'0000'
           IF ARG0-1 = X'0E08'
             MOVE X'0000' TO AZ-OPT-MASK-DATA2
             MOVE 2 TO AZ-OPT-BYTECOUNT
             CALL 'EVALOPT' USING AZ-OPT-MASK-DATA2
               AZ-OPT-COMMASK-DATA2(1) ARG0-2
               AZ-OPT-BYTECOUNT AZ-OPT-RC
             IF AZ-OPT-RC = 0 THEN
               MOVE 3 TO AZ-LINE-BYTE
               PERFORM GETLINENUM
               DISPLAY 'EXEC CICS RETURN X''0000'''
                ' L=' AZ-LINE-NUM
               MOVE 2 TO AZ-GRP-INDEX
               MOVE 1 TO AZ-FLAG-IN
               CALL 'GTMEMRC' USING TC-WORK-AREA OF AZ-INFO-BLOCK
                 AZ-GRP-INDEX AZ-FLAG-IN AZ-RECORD-PTR
               SET ADDRESS OF AZ-WK-RECORD-COUNT TO AZ-RECORD-PTR
               ADD 1 TO AZ-WK-RECORD-COUNT
               MOVE AZ-WK-RECORD-COUNT TO AZ-RECORD-COUNT-IN(1)
               EVALUATE AZ-TEST(1:AZ-TEST-LEN)
                 WHEN SPACE
                   CONTINUE
                 WHEN 'SQLC913'
                   CONTINUE
                 WHEN OTHER
                   CONTINUE
                 END-EVALUATE
             END-IF
           END-IF.
           PERFORM TEARDOWN.
       O0E080-SQLC913.
           IF AZ-RECORD-COUNT-OT(1) = 0 THEN
             CONTINUE
           ELSE
             CONTINUE
           END-IF.
       GETLINENUM.
           MOVE 1 TO AZ-LINE-J
           PERFORM VARYING AZ-LINE-I FROM AZ-LINE-BYTE BY 1
             UNTIL AZ-LINE-I > AZ-LINE-BYTE + 5
             MOVE ARG0-3(AZ-LINE-I) TO AZ-LINE-NUM-RD(AZ-LINE-J)
             ADD 1 TO AZ-LINE-J
           END-PERFORM
           EXIT.
       TEARDOWN.
           DISPLAY 'CICS_0E08_LGICDB01 SUCCESSFUL.'
           GOBACK.
       END PROGRAM 'CICS_0E08_LGICDB01'.
      *+---------------------------------------------------------------+
      *| PROGRAM FOR EXEC CICS ASKTIME                                 |
      *|    FUNCTION CODE: 4A02                                        |
      *|                                                               |
      *+---------------------------------------------------------------+
       IDENTIFICATION DIVISION.
       PROGRAM-ID. 'CICS_4A02_LGICDB01'.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 BZ-ASSERT.
         03 MESSAGE-LEN PIC S9(4) COMP-4 VALUE 24.
         03 MESSAGE-TXT PIC X(254) VALUE 'HELLO FROM CICS CALLBACK'.
       01  BZ-P1 PIC S9(9) COMP-4 VALUE 4.
       01  BZ-P2 PIC S9(9) COMP-4 VALUE 2001.
       01  BZ-P3 PIC X(3) VALUE 'AZU'.
       01 BZ-TRACE.
         03 TRACE-LEN       PIC S9(4) COMP-4 VALUE 5.
         03 TRACE-TXT       PIC X(254) VALUE 'TRACE'.
       01 BZUASSRT          PIC X(8) VALUE 'BZUASSRT'.
       01 BZUTRACE          PIC X(8) VALUE 'BZUTRACE'.
       01 AZ-TRACE-PTR      POINTER.
       01 AZ-TEST-LEN       PIC S9(8) COMP.
       01 AZ-RECORD.
         03 AZ-RECORD-COUNT-OT OCCURS 1 PIC 9(5) COMP-5 VALUE 0.
         03 AZ-RECORD-COUNT-IN OCCURS 1 PIC 9(5) COMP-5 VALUE 0.
       01 AZ-GRP-INDEX       PIC 9(8).
       01 AZ-FLAG-IN         PIC 9(1).
       01 AZ-RECORD-PTR      POINTER.
       01 AZ-OPT-MASK-DATA2  PIC X(2).
       01 AZ-OPT-MASK-DATA9  PIC X(9).
       01 AZ-OPT-MASK-DATA11 PIC X(11).
       01 AZ-OPT-MASK-DATA19 PIC X(19).
       01 AZ-OPT-BYTECOUNT   PIC S9(8) COMP.
       01 AZ-OPT-RC          PIC 9(1) VALUE 0.
       01 AZ-OPT-COMMASK.
         03  AZ-OPT-COMMASK-DATA2  PIC X(2) OCCURS 1.
         03  AZ-OPT-COMMASK-DATA9  PIC X(9) OCCURS 1.
         03  AZ-OPT-COMMASK-DATA11 PIC X(11) OCCURS 1.
         03  AZ-OPT-COMMASK-DATA19 PIC X(19) OCCURS 1.
       01 AZ-LINE-BYTE      PIC S9(2) COMP.
       01 AZ-LINE-NUM       PIC 9(5).
       01 AZ-LINE-NUM-R   REDEFINES AZ-LINE-NUM.
         03 AZ-LINE-NUM-RD  PIC 9(1) OCCURS 5.
       01 AZ-LINE-I         PIC S9(8) COMP.
       01 AZ-LINE-J         PIC S9(8) COMP.
       LOCAL-STORAGE SECTION.
       LINKAGE SECTION.
       01 AZ-TEST                   PIC X(80).
       01 AZ-INFO-BLOCK.
          COPY BZUITERC.
       01 AZ-WK-RECORD-COUNT PIC 9(5) COMP-5.
       01 AZ-MODX                   PIC X(4).
       01 AZ-DFHEIBLK.
         03 FILLER                  PIC X(85).
       01 AZ-DFHCOMMAREA.
         03 FILLER                  PIC X(1).
       01 ARG0.
         03 ARG0-1        PIC X(2).
         03 ARG0-A        PIC X(28).
         03 ARG0-B REDEFINES ARG0-A.
           05 ARG0-2      PIC X(9).
           05 FILLER      PIC X(19).
         03 ARG0-C REDEFINES ARG0-A.
           05 FILLER      PIC X(6).
           05 ARG0-D.
             07 ARG0-3    PIC 9(1) OCCURS 22.
       01 ARG1            POINTER.
       01 AZ-CICS-TARGET-NAME-DEF4 PIC X(4).
       01 AZ-CICS-TARGET-NAME-DEF7 PIC X(7).
       01 AZ-CICS-TARGET-NAME-DEF8 PIC X(8).
       1 DFHEIBLK.
         2 EIBTIME PICTURE S9(7) USAGE COMPUTATIONAL-3.
         2 EIBDATE PICTURE S9(7) USAGE COMPUTATIONAL-3.
         2 EIBTRNID PICTURE X(4).
         2 EIBTASKN PICTURE S9(7) USAGE COMPUTATIONAL-3.
         2 EIBTRMID PICTURE X(4).
         2 DFHEIGDI PICTURE S9(4) USAGE COMPUTATIONAL-5.
         2 EIBCPOSN PICTURE S9(4) USAGE COMPUTATIONAL-5.
         2 EIBCALEN PICTURE S9(4) USAGE COMPUTATIONAL-5.
         2 EIBAID PICTURE X(1).
         2 EIBFN PICTURE X(2).
         2 EIBRCODE PICTURE X(6).
         2 EIBDS PICTURE X(8).
         2 EIBREQID PICTURE X(8).
         2 EIBRSRCE PICTURE X(8).
         2 EIBSYNC PICTURE X.
         2 EIBFREE PICTURE X.
         2 EIBRECV PICTURE X.
         2 EIBSEND PICTURE X.
         2 EIBATT PICTURE X.
         2 EIBEOC PICTURE X.
         2 EIBFMH PICTURE X.
         2 EIBCOMPL PICTURE X(1).
         2 EIBSIG PICTURE X(1).
         2 EIBCONF PICTURE X(1).
         2 EIBERR PICTURE X(1).
         2 EIBERRCD PICTURE X(4).
         2 EIBSYNRB PICTURE X.
         2 EIBNODAT PICTURE X.
         2 EIBRESP PICTURE S9(8) USAGE COMPUTATIONAL.
         2 EIBRESP2 PICTURE S9(8) USAGE COMPUTATIONAL.
         2 EIBRLDBK PICTURE X(1).
       PROCEDURE DIVISION.
      * CHECK OUTPUT VALUE
      * CICS_INPT_4A02_LGICDB01.
           ENTRY 'CICS_INPT_4A02_LGICDB01' USING AZ-TEST
           AZ-INFO-BLOCK DFHEIBLK AZ-DFHCOMMAREA ARG0 ARG1.
           DISPLAY 'CICS_4A02_LGICDB01 CHECK VALUES...'
           MOVE 4 TO RETURN-CODE.
           MOVE 0 TO AZ-TEST-LEN.
           INSPECT AZ-TEST TALLYING AZ-TEST-LEN FOR
           CHARACTERS BEFORE INITIAL SPACE.
      * SET GROUP OPTION COMMON MASK IN CICS GROUP
           MOVE X'8000' TO AZ-OPT-COMMASK-DATA2(1).
      * EXEC CICS ASKTIME X'8000'
           IF ARG0-1 = X'4A02'
             MOVE X'8000' TO AZ-OPT-MASK-DATA2
             MOVE 2 TO AZ-OPT-BYTECOUNT
             CALL 'EVALOPT' USING AZ-OPT-MASK-DATA2
               AZ-OPT-COMMASK-DATA2(1) ARG0-2
               AZ-OPT-BYTECOUNT AZ-OPT-RC
             IF AZ-OPT-RC = 0 THEN
               MOVE 7 TO AZ-LINE-BYTE
               PERFORM GETLINENUM
               DISPLAY 'EXEC CICS ASKTIME X''8000'''
                ' L=' AZ-LINE-NUM
             END-IF
           END-IF.
           PERFORM TEARDOWN.
      * SET INPUT VALUE
      * CICS_OUTP_4A02_LGICDB01.
           ENTRY 'CICS_OUTP_4A02_LGICDB01' USING AZ-TEST
           AZ-INFO-BLOCK DFHEIBLK AZ-DFHCOMMAREA ARG0 ARG1.
           DISPLAY 'CICS_4A02_LGICDB01 INPUT VALUES...'
           MOVE 0 TO RETURN-CODE.
           MOVE 0 TO AZ-TEST-LEN.
           INSPECT AZ-TEST TALLYING AZ-TEST-LEN FOR
           CHARACTERS BEFORE INITIAL SPACE.
      * SET GROUP OPTION COMMON MASK IN CICS GROUP
           MOVE X'8000' TO AZ-OPT-COMMASK-DATA2(1).
      * EXEC CICS ASKTIME X'8000'
           IF ARG0-1 = X'4A02'
             MOVE X'8000' TO AZ-OPT-MASK-DATA2
             MOVE 2 TO AZ-OPT-BYTECOUNT
             CALL 'EVALOPT' USING AZ-OPT-MASK-DATA2
               AZ-OPT-COMMASK-DATA2(1) ARG0-2
               AZ-OPT-BYTECOUNT AZ-OPT-RC
             IF AZ-OPT-RC = 0 THEN
               MOVE 7 TO AZ-LINE-BYTE
               PERFORM GETLINENUM
               DISPLAY 'EXEC CICS ASKTIME X''8000'''
                ' L=' AZ-LINE-NUM
             END-IF
           END-IF.
           PERFORM TEARDOWN.
       GETLINENUM.
           MOVE 1 TO AZ-LINE-J
           PERFORM VARYING AZ-LINE-I FROM AZ-LINE-BYTE BY 1
             UNTIL AZ-LINE-I > AZ-LINE-BYTE + 5
             MOVE ARG0-3(AZ-LINE-I) TO AZ-LINE-NUM-RD(AZ-LINE-J)
             ADD 1 TO AZ-LINE-J
           END-PERFORM
           EXIT.
       TEARDOWN.
           DISPLAY 'CICS_4A02_LGICDB01 SUCCESSFUL.'
           GOBACK.
       END PROGRAM 'CICS_4A02_LGICDB01'.
      *+---------------------------------------------------------------+
      *| PROGRAM FOR EXEC CICS FORMATTIME                              |
      *|    FUNCTION CODE: 4A04                                        |
      *|                                                               |
      *+---------------------------------------------------------------+
       IDENTIFICATION DIVISION.
       PROGRAM-ID. 'CICS_4A04_LGICDB01'.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 BZ-ASSERT.
         03 MESSAGE-LEN PIC S9(4) COMP-4 VALUE 24.
         03 MESSAGE-TXT PIC X(254) VALUE 'HELLO FROM CICS CALLBACK'.
       01  BZ-P1 PIC S9(9) COMP-4 VALUE 4.
       01  BZ-P2 PIC S9(9) COMP-4 VALUE 2001.
       01  BZ-P3 PIC X(3) VALUE 'AZU'.
       01 BZ-TRACE.
         03 TRACE-LEN       PIC S9(4) COMP-4 VALUE 5.
         03 TRACE-TXT       PIC X(254) VALUE 'TRACE'.
       01 BZUASSRT          PIC X(8) VALUE 'BZUASSRT'.
       01 BZUTRACE          PIC X(8) VALUE 'BZUTRACE'.
       01 AZ-TRACE-PTR      POINTER.
       01 AZ-TEST-LEN       PIC S9(8) COMP.
       01 AZ-RECORD.
         03 AZ-RECORD-COUNT-OT OCCURS 1 PIC 9(5) COMP-5 VALUE 0.
         03 AZ-RECORD-COUNT-IN OCCURS 1 PIC 9(5) COMP-5 VALUE 0.
       01 AZ-GRP-INDEX       PIC 9(8).
       01 AZ-FLAG-IN         PIC 9(1).
       01 AZ-RECORD-PTR      POINTER.
       01 AZ-OPT-MASK-DATA2  PIC X(2).
       01 AZ-OPT-MASK-DATA9  PIC X(9).
       01 AZ-OPT-MASK-DATA11 PIC X(11).
       01 AZ-OPT-MASK-DATA19 PIC X(19).
       01 AZ-OPT-BYTECOUNT   PIC S9(8) COMP.
       01 AZ-OPT-RC          PIC 9(1) VALUE 0.
       01 AZ-OPT-COMMASK.
         03  AZ-OPT-COMMASK-DATA2  PIC X(2) OCCURS 1.
         03  AZ-OPT-COMMASK-DATA9  PIC X(9) OCCURS 1.
         03  AZ-OPT-COMMASK-DATA11 PIC X(11) OCCURS 1.
         03  AZ-OPT-COMMASK-DATA19 PIC X(19) OCCURS 1.
       01 AZ-LINE-BYTE      PIC S9(2) COMP.
       01 AZ-LINE-NUM       PIC 9(5).
       01 AZ-LINE-NUM-R   REDEFINES AZ-LINE-NUM.
         03 AZ-LINE-NUM-RD  PIC 9(1) OCCURS 5.
       01 AZ-LINE-I         PIC S9(8) COMP.
       01 AZ-LINE-J         PIC S9(8) COMP.
       LOCAL-STORAGE SECTION.
       LINKAGE SECTION.
       01 AZ-TEST                   PIC X(80).
       01 AZ-INFO-BLOCK.
          COPY BZUITERC.
       01 AZ-WK-RECORD-COUNT PIC 9(5) COMP-5.
       01 AZ-MODX                   PIC X(4).
       01 AZ-DFHEIBLK.
         03 FILLER                  PIC X(85).
       01 AZ-DFHCOMMAREA.
         03 FILLER                  PIC X(1).
       01 ARG0.
         03 ARG0-1        PIC X(2).
         03 ARG0-A        PIC X(28).
         03 ARG0-B REDEFINES ARG0-A.
           05 ARG0-2      PIC X(9).
           05 FILLER      PIC X(19).
         03 ARG0-C REDEFINES ARG0-A.
           05 FILLER      PIC X(6).
           05 ARG0-D.
             07 ARG0-3    PIC 9(1) OCCURS 22.
       01 ARG1            POINTER.
       01 ARG2            POINTER.
       01 ARG3            POINTER.
       01 ARG4            POINTER.
       01 ARG5            POINTER.
       01 ARG6            POINTER.
       01 ARG7            POINTER.
       01 ARG8            POINTER.
       01 ARG9            POINTER.
       01 ARG10           POINTER.
       01 ARG11           POINTER.
       01 ARG12           POINTER.
       01 ARG13           POINTER.
       01 ARG14           POINTER.
       01 ARG15           POINTER.
       01 ARG16           POINTER.
       01 ARG17           POINTER.
       01 ARG18           POINTER.
       01 ARG19           POINTER.
       01 ARG20           POINTER.
       01 ARG21           POINTER.
       01 ARG22           POINTER.
       01 ARG23           POINTER.
       01 ARG24           POINTER.
       01 ARG25           POINTER.
       01 ARG26           POINTER.
       01 AZ-CICS-TARGET-NAME-DEF4 PIC X(4).
       01 AZ-CICS-TARGET-NAME-DEF7 PIC X(7).
       01 AZ-CICS-TARGET-NAME-DEF8 PIC X(8).
       1 DFHEIBLK.
         2 EIBTIME PICTURE S9(7) USAGE COMPUTATIONAL-3.
         2 EIBDATE PICTURE S9(7) USAGE COMPUTATIONAL-3.
         2 EIBTRNID PICTURE X(4).
         2 EIBTASKN PICTURE S9(7) USAGE COMPUTATIONAL-3.
         2 EIBTRMID PICTURE X(4).
         2 DFHEIGDI PICTURE S9(4) USAGE COMPUTATIONAL-5.
         2 EIBCPOSN PICTURE S9(4) USAGE COMPUTATIONAL-5.
         2 EIBCALEN PICTURE S9(4) USAGE COMPUTATIONAL-5.
         2 EIBAID PICTURE X(1).
         2 EIBFN PICTURE X(2).
         2 EIBRCODE PICTURE X(6).
         2 EIBDS PICTURE X(8).
         2 EIBREQID PICTURE X(8).
         2 EIBRSRCE PICTURE X(8).
         2 EIBSYNC PICTURE X.
         2 EIBFREE PICTURE X.
         2 EIBRECV PICTURE X.
         2 EIBSEND PICTURE X.
         2 EIBATT PICTURE X.
         2 EIBEOC PICTURE X.
         2 EIBFMH PICTURE X.
         2 EIBCOMPL PICTURE X(1).
         2 EIBSIG PICTURE X(1).
         2 EIBCONF PICTURE X(1).
         2 EIBERR PICTURE X(1).
         2 EIBERRCD PICTURE X(4).
         2 EIBSYNRB PICTURE X.
         2 EIBNODAT PICTURE X.
         2 EIBRESP PICTURE S9(8) USAGE COMPUTATIONAL.
         2 EIBRESP2 PICTURE S9(8) USAGE COMPUTATIONAL.
         2 EIBRLDBK PICTURE X(1).
       PROCEDURE DIVISION.
      * CHECK OUTPUT VALUE
      * CICS_INPT_4A04_LGICDB01.
           ENTRY 'CICS_INPT_4A04_LGICDB01' USING AZ-TEST
           AZ-INFO-BLOCK DFHEIBLK AZ-DFHCOMMAREA ARG0 ARG1 ARG2 ARG3
           ARG4 ARG5 ARG6 ARG7 ARG8 ARG9 ARG10 ARG11 ARG12 ARG13
           ARG14 ARG15 ARG16 ARG17 ARG18 ARG19 ARG20 ARG21 ARG22
           ARG23 ARG24 ARG25 ARG26.
           DISPLAY 'CICS_4A04_LGICDB01 CHECK VALUES...'
           MOVE 4 TO RETURN-CODE.
           MOVE 0 TO AZ-TEST-LEN.
           INSPECT AZ-TEST TALLYING AZ-TEST-LEN FOR
           CHARACTERS BEFORE INITIAL SPACE.
      * SET GROUP OPTION COMMON MASK IN CICS GROUP
           MOVE X'800200000008000000' TO AZ-OPT-COMMASK-DATA9(1).
      * EXEC CICS FORMATTIME X'800200000008000000'
           IF ARG0-1 = X'4A04'
             MOVE X'800200000008000000' TO AZ-OPT-MASK-DATA9
             MOVE 9 TO AZ-OPT-BYTECOUNT
             CALL 'EVALOPT' USING AZ-OPT-MASK-DATA9
               AZ-OPT-COMMASK-DATA9(1) ARG0-2
               AZ-OPT-BYTECOUNT AZ-OPT-RC
             IF AZ-OPT-RC = 0 THEN
               MOVE 7 TO AZ-LINE-BYTE
               PERFORM GETLINENUM
               DISPLAY 'EXEC CICS FORMATTIME X''800200000008000000'''
                ' L=' AZ-LINE-NUM
             END-IF
           END-IF.
           PERFORM TEARDOWN.
      * SET INPUT VALUE
      * CICS_OUTP_4A04_LGICDB01.
           ENTRY 'CICS_OUTP_4A04_LGICDB01' USING AZ-TEST
           AZ-INFO-BLOCK DFHEIBLK AZ-DFHCOMMAREA ARG0 ARG1 ARG2 ARG3
           ARG4 ARG5 ARG6 ARG7 ARG8 ARG9 ARG10 ARG11 ARG12 ARG13
           ARG14 ARG15 ARG16 ARG17 ARG18 ARG19 ARG20 ARG21 ARG22
           ARG23 ARG24 ARG25 ARG26.
           DISPLAY 'CICS_4A04_LGICDB01 INPUT VALUES...'
           MOVE 0 TO RETURN-CODE.
           MOVE 0 TO AZ-TEST-LEN.
           INSPECT AZ-TEST TALLYING AZ-TEST-LEN FOR
           CHARACTERS BEFORE INITIAL SPACE.
      * SET GROUP OPTION COMMON MASK IN CICS GROUP
           MOVE X'800200000008000000' TO AZ-OPT-COMMASK-DATA9(1).
      * EXEC CICS FORMATTIME X'800200000008000000'
           IF ARG0-1 = X'4A04'
             MOVE X'800200000008000000' TO AZ-OPT-MASK-DATA9
             MOVE 9 TO AZ-OPT-BYTECOUNT
             CALL 'EVALOPT' USING AZ-OPT-MASK-DATA9
               AZ-OPT-COMMASK-DATA9(1) ARG0-2
               AZ-OPT-BYTECOUNT AZ-OPT-RC
             IF AZ-OPT-RC = 0 THEN
               MOVE 7 TO AZ-LINE-BYTE
               PERFORM GETLINENUM
               DISPLAY 'EXEC CICS FORMATTIME X''800200000008000000'''
                ' L=' AZ-LINE-NUM
             END-IF
           END-IF.
           PERFORM TEARDOWN.
       GETLINENUM.
           MOVE 1 TO AZ-LINE-J
           PERFORM VARYING AZ-LINE-I FROM AZ-LINE-BYTE BY 1
             UNTIL AZ-LINE-I > AZ-LINE-BYTE + 5
             MOVE ARG0-3(AZ-LINE-I) TO AZ-LINE-NUM-RD(AZ-LINE-J)
             ADD 1 TO AZ-LINE-J
           END-PERFORM
           EXIT.
       TEARDOWN.
           DISPLAY 'CICS_4A04_LGICDB01 SUCCESSFUL.'
           GOBACK.
       END PROGRAM 'CICS_4A04_LGICDB01'.
      *+---------------------------------------------------------------+
      *| PROGRAM FOR EXEC CICS LINK                                    |
      *|    FUNCTION CODE: 0E02                                        |
      *|                                                               |
      *+---------------------------------------------------------------+
       IDENTIFICATION DIVISION.
       PROGRAM-ID. 'CICS_0E02_LGICDB01'.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 BZ-ASSERT.
         03 MESSAGE-LEN PIC S9(4) COMP-4 VALUE 24.
         03 MESSAGE-TXT PIC X(254) VALUE 'HELLO FROM CICS CALLBACK'.
       01  BZ-P1 PIC S9(9) COMP-4 VALUE 4.
       01  BZ-P2 PIC S9(9) COMP-4 VALUE 2001.
       01  BZ-P3 PIC X(3) VALUE 'AZU'.
       01 BZ-TRACE.
         03 TRACE-LEN       PIC S9(4) COMP-4 VALUE 5.
         03 TRACE-TXT       PIC X(254) VALUE 'TRACE'.
       01 BZUASSRT          PIC X(8) VALUE 'BZUASSRT'.
       01 BZUTRACE          PIC X(8) VALUE 'BZUTRACE'.
       01 AZ-TRACE-PTR      POINTER.
       01 AZ-TEST-LEN       PIC S9(8) COMP.
       01 AZ-RECORD.
         03 AZ-RECORD-COUNT-OT OCCURS 1 PIC 9(5) COMP-5 VALUE 0.
         03 AZ-RECORD-COUNT-IN OCCURS 1 PIC 9(5) COMP-5 VALUE 0.
       01 AZ-GRP-INDEX       PIC 9(8).
       01 AZ-FLAG-IN         PIC 9(1).
       01 AZ-RECORD-PTR      POINTER.
       01 AZ-OPT-MASK-DATA2  PIC X(2).
       01 AZ-OPT-MASK-DATA9  PIC X(9).
       01 AZ-OPT-MASK-DATA11 PIC X(11).
       01 AZ-OPT-MASK-DATA19 PIC X(19).
       01 AZ-OPT-BYTECOUNT   PIC S9(8) COMP.
       01 AZ-OPT-RC          PIC 9(1) VALUE 0.
       01 AZ-OPT-COMMASK.
         03  AZ-OPT-COMMASK-DATA2  PIC X(2) OCCURS 1.
         03  AZ-OPT-COMMASK-DATA9  PIC X(9) OCCURS 1.
         03  AZ-OPT-COMMASK-DATA11 PIC X(11) OCCURS 1.
         03  AZ-OPT-COMMASK-DATA19 PIC X(19) OCCURS 1.
       01 AZ-LINE-BYTE      PIC S9(2) COMP.
       01 AZ-LINE-NUM       PIC 9(5).
       01 AZ-LINE-NUM-R   REDEFINES AZ-LINE-NUM.
         03 AZ-LINE-NUM-RD  PIC 9(1) OCCURS 5.
       01 AZ-LINE-I         PIC S9(8) COMP.
       01 AZ-LINE-J         PIC S9(8) COMP.
       LOCAL-STORAGE SECTION.
       LINKAGE SECTION.
       01 AZ-TEST                   PIC X(80).
       01 AZ-INFO-BLOCK.
          COPY BZUITERC.
       01 AZ-WK-RECORD-COUNT PIC 9(5) COMP-5.
       01 AZ-MODX                   PIC X(4).
       01 AZ-DFHEIBLK.
         03 FILLER                  PIC X(85).
       01 AZ-DFHCOMMAREA.
         03 FILLER                  PIC X(1).
       01 ARG0.
         03 ARG0-1        PIC X(2).
         03 ARG0-A        PIC X(28).
         03 ARG0-B REDEFINES ARG0-A.
           05 ARG0-2      PIC X(9).
           05 FILLER      PIC X(19).
         03 ARG0-C REDEFINES ARG0-A.
           05 FILLER      PIC X(6).
           05 ARG0-D.
             07 ARG0-3    PIC 9(1) OCCURS 22.
       01 ARG1            POINTER.
       01 ARG2            POINTER.
       01 ARG3            POINTER.
       01 ARG4            POINTER.
       01 ARG5            POINTER.
       01 ARG6            POINTER.
       01 ARG7            POINTER.
       01 ARG8            POINTER.
       01 ARG9            POINTER.
       01 ARG10           POINTER.
       01 AZ-CICS-TARGET-NAME-DEF4 PIC X(4).
       01 AZ-CICS-TARGET-NAME-DEF7 PIC X(7).
       01 AZ-CICS-TARGET-NAME-DEF8 PIC X(8).
       1 DFHEIBLK.
         2 EIBTIME PICTURE S9(7) USAGE COMPUTATIONAL-3.
         2 EIBDATE PICTURE S9(7) USAGE COMPUTATIONAL-3.
         2 EIBTRNID PICTURE X(4).
         2 EIBTASKN PICTURE S9(7) USAGE COMPUTATIONAL-3.
         2 EIBTRMID PICTURE X(4).
         2 DFHEIGDI PICTURE S9(4) USAGE COMPUTATIONAL-5.
         2 EIBCPOSN PICTURE S9(4) USAGE COMPUTATIONAL-5.
         2 EIBCALEN PICTURE S9(4) USAGE COMPUTATIONAL-5.
         2 EIBAID PICTURE X(1).
         2 EIBFN PICTURE X(2).
         2 EIBRCODE PICTURE X(6).
         2 EIBDS PICTURE X(8).
         2 EIBREQID PICTURE X(8).
         2 EIBRSRCE PICTURE X(8).
         2 EIBSYNC PICTURE X.
         2 EIBFREE PICTURE X.
         2 EIBRECV PICTURE X.
         2 EIBSEND PICTURE X.
         2 EIBATT PICTURE X.
         2 EIBEOC PICTURE X.
         2 EIBFMH PICTURE X.
         2 EIBCOMPL PICTURE X(1).
         2 EIBSIG PICTURE X(1).
         2 EIBCONF PICTURE X(1).
         2 EIBERR PICTURE X(1).
         2 EIBERRCD PICTURE X(4).
         2 EIBSYNRB PICTURE X.
         2 EIBNODAT PICTURE X.
         2 EIBRESP PICTURE S9(8) USAGE COMPUTATIONAL.
         2 EIBRESP2 PICTURE S9(8) USAGE COMPUTATIONAL.
         2 EIBRLDBK PICTURE X(1).
       PROCEDURE DIVISION.
      * CHECK OUTPUT VALUE
      * CICS_INPT_0E02_LGICDB01.
           ENTRY 'CICS_INPT_0E02_LGICDB01' USING AZ-TEST
           AZ-INFO-BLOCK DFHEIBLK AZ-DFHCOMMAREA ARG0 ARG1 ARG2 ARG3
           ARG4 ARG5 ARG6 ARG7 ARG8 ARG9 ARG10.
           DISPLAY 'CICS_0E02_LGICDB01 CHECK VALUES...'
           MOVE 4 TO RETURN-CODE.
           MOVE 0 TO AZ-TEST-LEN.
           INSPECT AZ-TEST TALLYING AZ-TEST-LEN FOR
           CHARACTERS BEFORE INITIAL SPACE.
      * SET GROUP OPTION COMMON MASK IN CICS GROUP
           MOVE X'E000' TO AZ-OPT-COMMASK-DATA2(1).
      * EXEC CICS LINK "LGSTSQ" X'E000'
           IF ARG0-1 = X'0E02'
             SET ADDRESS OF AZ-CICS-TARGET-NAME-DEF8 TO ADDRESS OF ARG1
             MOVE X'E000' TO AZ-OPT-MASK-DATA2
             MOVE 2 TO AZ-OPT-BYTECOUNT
             CALL 'EVALOPT' USING AZ-OPT-MASK-DATA2
               AZ-OPT-COMMASK-DATA2(1) ARG0-2
               AZ-OPT-BYTECOUNT AZ-OPT-RC
             IF AZ-CICS-TARGET-NAME-DEF8 = 'LGSTSQ' AND
                AZ-OPT-RC = 0 THEN
               MOVE 3 TO AZ-LINE-BYTE
               PERFORM GETLINENUM
               DISPLAY 'EXEC CICS LINK "LGSTSQ" X''E000'''
               ' L=' AZ-LINE-NUM
             END-IF
           END-IF.
           PERFORM TEARDOWN.
      * SET INPUT VALUE
      * CICS_OUTP_0E02_LGICDB01.
           ENTRY 'CICS_OUTP_0E02_LGICDB01' USING AZ-TEST
           AZ-INFO-BLOCK DFHEIBLK AZ-DFHCOMMAREA ARG0 ARG1 ARG2 ARG3
           ARG4 ARG5 ARG6 ARG7 ARG8 ARG9 ARG10.
           DISPLAY 'CICS_0E02_LGICDB01 INPUT VALUES...'
           MOVE 0 TO RETURN-CODE.
           MOVE 0 TO AZ-TEST-LEN.
           INSPECT AZ-TEST TALLYING AZ-TEST-LEN FOR
           CHARACTERS BEFORE INITIAL SPACE.
      * SET GROUP OPTION COMMON MASK IN CICS GROUP
           MOVE X'E000' TO AZ-OPT-COMMASK-DATA2(1).
      * EXEC CICS LINK "LGSTSQ" X'E000'
           IF ARG0-1 = X'0E02'
             SET ADDRESS OF AZ-CICS-TARGET-NAME-DEF8 TO ADDRESS OF ARG1
             MOVE X'E000' TO AZ-OPT-MASK-DATA2
             MOVE 2 TO AZ-OPT-BYTECOUNT
             CALL 'EVALOPT' USING AZ-OPT-MASK-DATA2
               AZ-OPT-COMMASK-DATA2(1) ARG0-2
               AZ-OPT-BYTECOUNT AZ-OPT-RC
             IF AZ-CICS-TARGET-NAME-DEF8 = 'LGSTSQ' AND
                AZ-OPT-RC = 0 THEN
               MOVE 3 TO AZ-LINE-BYTE
               PERFORM GETLINENUM
               DISPLAY 'EXEC CICS LINK "LGSTSQ" X''E000'''
               ' L=' AZ-LINE-NUM
             END-IF
           END-IF.
           PERFORM TEARDOWN.
       GETLINENUM.
           MOVE 1 TO AZ-LINE-J
           PERFORM VARYING AZ-LINE-I FROM AZ-LINE-BYTE BY 1
             UNTIL AZ-LINE-I > AZ-LINE-BYTE + 5
             MOVE ARG0-3(AZ-LINE-I) TO AZ-LINE-NUM-RD(AZ-LINE-J)
             ADD 1 TO AZ-LINE-J
           END-PERFORM
           EXIT.
       TEARDOWN.
           DISPLAY 'CICS_0E02_LGICDB01 SUCCESSFUL.'
           GOBACK.
       END PROGRAM 'CICS_0E02_LGICDB01'.
      *+---------------------------------------------------------------+
      *| PROGRAM FOR EXEC SQL SELECT_INTO                              |
      *|    FUNCTION CODE: 00E7                                        |
      *|                                                               |
      *+---------------------------------------------------------------+
       IDENTIFICATION DIVISION.
       PROGRAM-ID. 'DB2_00E7_LGICDB01'.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 BZ-ASSERT.
         03 MESSAGE-LEN PIC S9(4) COMP-4 VALUE 24.
         03 MESSAGE-TXT PIC X(254) VALUE 'HELLO FROM DB2 CALLBACK'.
       01  BZ-P1 PIC S9(9) COMP-4 VALUE 4.
       01  BZ-P2 PIC S9(9) COMP-4 VALUE 2001.
       01  BZ-P3 PIC X(3) VALUE 'AZU'.
       01 BZ-TRACE.
         03 TRACE-LEN       PIC S9(4) COMP-4 VALUE 5.
         03 TRACE-TXT       PIC X(254) VALUE 'TRACE'.
       01 BZUASSRT          PIC X(8) VALUE 'BZUASSRT'.
       01 BZUTRACE          PIC X(8) VALUE 'BZUTRACE'.
       01 AZ-TRACE-PTR      POINTER.
       01 AZ-TEST-LEN        PIC S9(8) COMP.
       01 AZ-RECORD.
         03 AZ-RECORD-COUNT-OT OCCURS 1 PIC 9(5) COMP-5 VALUE 0.
         03 AZ-RECORD-COUNT-IN OCCURS 1 PIC 9(5) COMP-5 VALUE 0.
         03 AZ-OUT-PARM-NUM  PIC 9(8).
         03 AZ-IN-PARM-NUM   PIC 9(8).
         03 AZ-STMT-NUM      PIC 9(9).
       01 AZ-GRP-INDEX       PIC 9(8).
       01 AZ-FLAG-IN         PIC 9(1).
       01 AZ-RECORD-PTR      POINTER.
       01 AZ-COMPARE.
         03 AZ-COMPARE-ITEM-NAME-PTR POINTER.
         03 AZ-COMPARE-ITEM-NAME-LEN PIC S9(9) COMP-5.
         03 AZ-COMPARE-ITEM-VALUE-PTR POINTER.
         03 AZ-COMPARE-ITEM-VALUE-LEN PIC S9(9) COMP-5.
         03 AZ-COMPARE-ITEM-EXP-VALUE-PTR POINTER.
         03 AZ-COMPARE-ITEM-EXP-VALUE-LEN PIC S9(9) COMP-5.
       1 AZ-TEST-INPUT-DATA-VALUE.
          3 ZUT00000000.
            5 PIC X(6) DISPLAY VALUE 'Andrew'.
            5 PIC X(4) DISPLAY VALUE SPACES.
          3 ZUT00000001.
            5 PIC X(5) DISPLAY VALUE 'Pandy'.
            5 PIC X(15) DISPLAY VALUE SPACES.
          3 ZUT00000002.
            5 PIC X(10) DISPLAY VALUE '1950-07-11'.
          3 ZUT00000003.
            5 PIC X(20) DISPLAY VALUE SPACES.
          3 ZUT00000004.
            5 PIC X(2) DISPLAY VALUE '34'.
            5 PIC X(2) DISPLAY VALUE SPACES.
          3 ZUT00000005.
            5 PIC X(7) DISPLAY VALUE 'PI101OO'.
            5 PIC X(1) DISPLAY VALUE SPACES.
          3 ZUT00000006.
            5 PIC X(12) DISPLAY VALUE '07799 123456'.
            5 PIC X(8) DISPLAY VALUE SPACES.
          3 ZUT00000007.
            5 PIC X(12) DISPLAY VALUE '01962 811234'.
            5 PIC X(8) DISPLAY VALUE SPACES.
          3 ZUT00000008.
            5 PIC X(20) DISPLAY VALUE 'A.Pandy@beebhouse.co'.
            5 PIC X(1) DISPLAY VALUE 'm'.
            5 PIC X(79) DISPLAY VALUE SPACES.
          3 ZUT00000009.
            5 PIC X(5) DISPLAY VALUE 'SQLCA'.
            5 PIC X(3) DISPLAY VALUE SPACES.
          3 ZUT0000000A.
            5 PIC X(70) DISPLAY VALUE SPACES.
          3 ZUT0000000B.
            5 PIC X(3) DISPLAY VALUE 'DSN'.
            5 PIC X(5) DISPLAY VALUE SPACES.
          3 ZUT0000000C.
            5 PIC X(1) DISPLAY VALUE SPACES.
          3 ZUT0000000D.
            5 PIC X(1) DISPLAY VALUE SPACES.
          3 ZUT0000000E.
            5 PIC X(1) DISPLAY VALUE SPACES.
          3 ZUT0000000F.
            5 PIC X(1) DISPLAY VALUE SPACES.
          3 ZUT00000010.
            5 PIC X(1) DISPLAY VALUE SPACES.
          3 ZUT00000011.
            5 PIC X(1) DISPLAY VALUE SPACES.
          3 ZUT00000012.
            5 PIC X(1) DISPLAY VALUE SPACES.
          3 ZUT00000013.
            5 PIC X(1) DISPLAY VALUE SPACES.
          3 ZUT00000014.
            5 PIC X(1) DISPLAY VALUE SPACES.
          3 ZUT00000015.
            5 PIC X(1) DISPLAY VALUE SPACES.
          3 ZUT00000016.
            5 PIC X(1) DISPLAY VALUE SPACES.
          3 ZUT00000017.
            5 PIC X(5) DISPLAY VALUE '00000'.
       LOCAL-STORAGE SECTION.
       01 AZ-HOSTVAR-PTR     POINTER.
       01 AZ-HOSTVAR-PTR-ADDR
           REDEFINES AZ-HOSTVAR-PTR PIC 9(9) COMP-5.
       1 AZ-COMPARE-ITEM-NAMES.
         3 ZUT00000022.
            5 PIC X(20) DISPLAY VALUE 'DB2-CUSTOMERNUMBER-I'.
            5 PIC X(20) DISPLAY VALUE 'NT OF DB2-IN-INTEGER'.
            5 PIC X(1) DISPLAY VALUE 'S'.
       1 AZ-COMPARE-WORK-ITEMS.
          3 ZUT00000023 PIC -9(9) OCCURS 2.
       LINKAGE SECTION.
       01 AZ-TEST            PIC X(80).
       01 AZ-INFO-BLOCK.
          COPY BZUITERC.
       01 AZ-APLIST.
          COPY BZUDB2CP.
       01 AZ-WK-RECORD-COUNT PIC 9(5) COMP-5.
       01 AZ-COMPARE-ITEM-NAME      PIC X(254).
       01 AZ-COMPARE-ITEM-VALUE     PIC X(254).
       01 AZ-COMPARE-ITEM-EXP-VALUE PIC X(254).
       01 ARGO1.
          COPY BZUDB2CV.
       01 ARGI1          .
          COPY BZUDB2CV.
       01 ARGI2          .
          COPY BZUDB2CV.
       01 ARGI3          .
          COPY BZUDB2CV.
       01 ARGI4          .
          COPY BZUDB2CV.
       01 ARGI5          .
          COPY BZUDB2CV.
       01 ARGI6          .
          COPY BZUDB2CV.
       01 ARGI7          .
          COPY BZUDB2CV.
       01 ARGI8          .
          COPY BZUDB2CV.
       01 ARGI9          .
          COPY BZUDB2CV.
       1 ZUT00000018.
         3 DB2-CUSTOMERNUMBER-INT PIC S9(9) COMP.
       1 ZUT00000019.
         5 CA-FIRST-NAME PIC X(10).
       1 ZUT0000001A.
         5 CA-LAST-NAME PIC X(20).
       1 ZUT0000001B.
         5 CA-DOB PIC X(10).
       1 ZUT0000001C.
         5 CA-HOUSE-NAME PIC X(20).
       1 ZUT0000001D.
         5 CA-HOUSE-NUM PIC X(4).
       1 ZUT0000001E.
         5 CA-POSTCODE PIC X(8).
       1 ZUT0000001F.
         5 CA-PHONE-MOBILE PIC X(20).
       1 ZUT00000020.
         5 CA-PHONE-HOME PIC X(20).
       1 ZUT00000021.
         5 CA-EMAIL-ADDRESS PIC X(100).
       1 SQLCA.
         5 SQLCAID PIC X(8).
         5 SQLCABC PIC S9(9) BINARY.
         5 SQLCODE PIC S9(9) BINARY.
         5 SQLERRM.
         49 SQLERRML PIC S9(4) BINARY.
         49 SQLERRMC PIC X(70).
         5 SQLERRP PIC X(8).
         5 SQLERRD OCCURS 6 TIMES PIC S9(9) BINARY.
         5 SQLWARN.
         10 SQLWARN0 PIC X.
         10 SQLWARN1 PIC X.
         10 SQLWARN2 PIC X.
         10 SQLWARN3 PIC X.
         10 SQLWARN4 PIC X.
         10 SQLWARN5 PIC X.
         10 SQLWARN6 PIC X.
         10 SQLWARN7 PIC X.
         10 SQLWARN8 PIC X.
         10 SQLWARN9 PIC X.
         10 SQLWARNA PIC X.
         5 SQLSTATE PIC X(5).
       01 AZ-SQLDA.
          COPY BZUDB2CA.
       PROCEDURE DIVISION.
      * CHECK OUTPUT VALUE
      * DB2_INPT_00E7_LGICDB01.
           ENTRY 'DB2_INPT_00E7_LGICDB01' USING AZ-TEST
           AZ-INFO-BLOCK AZ-APLIST ARGO1.
           DISPLAY 'DB2_00E7_LGICDB01 CHECK VALUES...'
           MOVE 4 TO RETURN-CODE.
           MOVE SQL-STMT-NUM OF AZ-APLIST TO AZ-STMT-NUM
           SET ADDRESS OF AZ-SQLDA TO SQL-VPARMPTR
           MOVE SQLDA-NUM OF AZ-SQLDA TO AZ-OUT-PARM-NUM
           SET ADDRESS OF AZ-SQLDA TO SQL-APARMPTR
           MOVE SQLDA-NUM OF AZ-SQLDA TO AZ-IN-PARM-NUM
           SET ADDRESS OF SQLCA TO SQL-CODEPTR OF AZ-APLIST
           MOVE 0 TO AZ-TEST-LEN.
           INSPECT AZ-TEST TALLYING AZ-TEST-LEN FOR
           CHARACTERS BEFORE INITIAL SPACE.
      * EXEC SQL SELECT_INTO : OUT=1 IN=9
           IF AZ-OUT-PARM-NUM = 1 AND
              AZ-IN-PARM-NUM = 9 THEN
             DISPLAY 'EXEC SQL SELECT_INTO'
              ' : OUT=' 1 ' IN=' 9
              ' L=' AZ-STMT-NUM
             MOVE SQL-AVAR-ADDR OF ARGO1 TO AZ-HOSTVAR-PTR-ADDR
             SET ADDRESS OF ZUT00000018
             TO AZ-HOSTVAR-PTR
             MOVE 6 TO AZ-GRP-INDEX
             MOVE 0 TO AZ-FLAG-IN
             CALL 'GTMEMRC' USING TC-WORK-AREA OF AZ-INFO-BLOCK
               AZ-GRP-INDEX AZ-FLAG-IN AZ-RECORD-PTR
             SET ADDRESS OF AZ-WK-RECORD-COUNT TO AZ-RECORD-PTR
             ADD 1 TO AZ-WK-RECORD-COUNT
             MOVE AZ-WK-RECORD-COUNT TO AZ-RECORD-COUNT-OT(1)
             EVALUATE AZ-TEST(1:AZ-TEST-LEN)
               WHEN SPACE
                 CONTINUE
               WHEN 'SQLC913'
                 PERFORM O00E70-SQLC913
                 CONTINUE
               WHEN OTHER
                 CONTINUE
             END-EVALUATE
           END-IF.
           PERFORM TEARDOWN.
      * SET INPUT VALUE
      * DB2_OUTP_00E7_LGICDB01.
           ENTRY 'DB2_OUTP_00E7_LGICDB01' USING AZ-TEST
           AZ-INFO-BLOCK AZ-APLIST ARGI1 ARGI2 ARGI3 ARGI4 ARGI5 ARGI6
           ARGI7 ARGI8 ARGI9.
           DISPLAY 'DB2_00E7_LGICDB01 INPUT VALUES...'
           MOVE 0 TO RETURN-CODE.
           MOVE SQL-STMT-NUM OF AZ-APLIST TO AZ-STMT-NUM
           SET ADDRESS OF AZ-SQLDA TO SQL-VPARMPTR
           MOVE SQLDA-NUM OF AZ-SQLDA TO AZ-OUT-PARM-NUM
           SET ADDRESS OF AZ-SQLDA TO SQL-APARMPTR
           MOVE SQLDA-NUM OF AZ-SQLDA TO AZ-IN-PARM-NUM
           SET ADDRESS OF SQLCA TO SQL-CODEPTR OF AZ-APLIST
           MOVE 0 TO AZ-TEST-LEN.
           INSPECT AZ-TEST TALLYING AZ-TEST-LEN FOR
           CHARACTERS BEFORE INITIAL SPACE.
      * EXEC SQL SELECT_INTO : OUT=1 IN=9
           IF AZ-OUT-PARM-NUM = 1 AND
              AZ-IN-PARM-NUM = 9 THEN
             DISPLAY 'EXEC SQL SELECT_INTO'
              ' : OUT=' 1 ' IN=' 9
              ' L=' AZ-STMT-NUM
             MOVE SQL-AVAR-ADDR OF ARGI1 TO AZ-HOSTVAR-PTR-ADDR
             SET ADDRESS OF ZUT00000019
             TO AZ-HOSTVAR-PTR
             MOVE SQL-AVAR-ADDR OF ARGI2 TO AZ-HOSTVAR-PTR-ADDR
             SET ADDRESS OF ZUT0000001A
             TO AZ-HOSTVAR-PTR
             MOVE SQL-AVAR-ADDR OF ARGI3 TO AZ-HOSTVAR-PTR-ADDR
             SET ADDRESS OF ZUT0000001B
             TO AZ-HOSTVAR-PTR
             MOVE SQL-AVAR-ADDR OF ARGI4 TO AZ-HOSTVAR-PTR-ADDR
             SET ADDRESS OF ZUT0000001C
             TO AZ-HOSTVAR-PTR
             MOVE SQL-AVAR-ADDR OF ARGI5 TO AZ-HOSTVAR-PTR-ADDR
             SET ADDRESS OF ZUT0000001D
             TO AZ-HOSTVAR-PTR
             MOVE SQL-AVAR-ADDR OF ARGI6 TO AZ-HOSTVAR-PTR-ADDR
             SET ADDRESS OF ZUT0000001E
             TO AZ-HOSTVAR-PTR
             MOVE SQL-AVAR-ADDR OF ARGI7 TO AZ-HOSTVAR-PTR-ADDR
             SET ADDRESS OF ZUT0000001F
             TO AZ-HOSTVAR-PTR
             MOVE SQL-AVAR-ADDR OF ARGI8 TO AZ-HOSTVAR-PTR-ADDR
             SET ADDRESS OF ZUT00000020
             TO AZ-HOSTVAR-PTR
             MOVE SQL-AVAR-ADDR OF ARGI9 TO AZ-HOSTVAR-PTR-ADDR
             SET ADDRESS OF ZUT00000021
             TO AZ-HOSTVAR-PTR
             MOVE 6 TO AZ-GRP-INDEX
             MOVE 1 TO AZ-FLAG-IN
             CALL 'GTMEMRC' USING TC-WORK-AREA OF AZ-INFO-BLOCK
               AZ-GRP-INDEX AZ-FLAG-IN AZ-RECORD-PTR
             SET ADDRESS OF AZ-WK-RECORD-COUNT TO AZ-RECORD-PTR
             ADD 1 TO AZ-WK-RECORD-COUNT
             MOVE AZ-WK-RECORD-COUNT TO AZ-RECORD-COUNT-IN(1)
             EVALUATE AZ-TEST(1:AZ-TEST-LEN)
               WHEN SPACE
                 CONTINUE
               WHEN 'SQLC913'
                 PERFORM I00E70-SQLC913
                 CONTINUE
               WHEN OTHER
                 CONTINUE
             END-EVALUATE
           END-IF.
           PERFORM TEARDOWN.
       O00E70-SQLC913.
           INITIALIZE AZ-COMPARE-WORK-ITEMS
           IF AZ-RECORD-COUNT-OT(1) = 0 THEN
             CONTINUE
           ELSE IF AZ-RECORD-COUNT-OT(1) = 1
             MOVE 0 TO RETURN-CODE
             IF DB2-CUSTOMERNUMBER-INT OF ZUT00000018 = 1 THEN
               CONTINUE
             ELSE
                MOVE DB2-CUSTOMERNUMBER-INT OF ZUT00000018 TO
           ZUT00000023(1)
               MOVE 1 TO ZUT00000023(2)
               SET AZ-COMPARE-ITEM-NAME-PTR TO ADDRESS OF ZUT00000022
               MOVE LENGTH OF ZUT00000022 TO AZ-COMPARE-ITEM-NAME-LEN
               SET AZ-COMPARE-ITEM-VALUE-PTR TO ADDRESS OF
           ZUT00000023(1)
               MOVE 10 TO AZ-COMPARE-ITEM-VALUE-LEN
               SET AZ-COMPARE-ITEM-EXP-VALUE-PTR TO ADDRESS OF
           ZUT00000023(2)
               MOVE 10 TO AZ-COMPARE-ITEM-EXP-VALUE-LEN
               MOVE 1 TO MESSAGE-LEN OF BZ-ASSERT
               STRING
                 'COMPARE FAILED AT RECORD 1 '
                 'IN EXEC SQL SELECT_INTO '
                  ': OUT= 1 IN= 9 '
                 '(LISTINGLINE=' AZ-STMT-NUM ').'
                 DELIMITED BY SIZE INTO MESSAGE-TXT OF BZ-ASSERT
                 WITH POINTER MESSAGE-LEN OF BZ-ASSERT
               END-STRING
               SUBTRACT 1 FROM MESSAGE-LEN OF BZ-ASSERT
               PERFORM THROW-ASSERTION
             END-IF
           ELSE
             CONTINUE
           END-IF
           END-IF.
       I00E70-SQLC913.
           IF AZ-RECORD-COUNT-IN(1) = 0 THEN
             CONTINUE
           ELSE IF AZ-RECORD-COUNT-IN(1) = 1
           MOVE ZUT00000000 TO CA-FIRST-NAME OF ZUT00000019
           MOVE ZUT00000001 TO CA-LAST-NAME OF ZUT0000001A
           MOVE ZUT00000002 TO CA-DOB OF ZUT0000001B
           MOVE ZUT00000003 TO CA-HOUSE-NAME OF ZUT0000001C
           MOVE ZUT00000004 TO CA-HOUSE-NUM OF ZUT0000001D
           MOVE ZUT00000005 TO CA-POSTCODE OF ZUT0000001E
           MOVE ZUT00000006 TO CA-PHONE-MOBILE OF ZUT0000001F
           MOVE ZUT00000007 TO CA-PHONE-HOME OF ZUT00000020
           MOVE ZUT00000008 TO CA-EMAIL-ADDRESS OF ZUT00000021
           MOVE ZUT00000009 TO SQLCAID OF SQLCA
           MOVE 136 TO SQLCABC OF SQLCA
           MOVE -913 TO SQLCODE OF SQLCA
           MOVE 0 TO SQLERRML OF SQLERRM OF SQLCA
           MOVE ZUT0000000A TO SQLERRMC OF SQLERRM OF SQLCA
           MOVE ZUT0000000B TO SQLERRP OF SQLCA
           MOVE 0 TO SQLERRD OF SQLCA (1)
           MOVE 0 TO SQLERRD OF SQLCA (2)
           MOVE 0 TO SQLERRD OF SQLCA (3)
           MOVE -1 TO SQLERRD OF SQLCA (4)
           MOVE 0 TO SQLERRD OF SQLCA (5)
           MOVE 0 TO SQLERRD OF SQLCA (6)
           MOVE ZUT0000000C TO SQLWARN0 OF SQLWARN OF SQLCA
           MOVE ZUT0000000D TO SQLWARN1 OF SQLWARN OF SQLCA
           MOVE ZUT0000000E TO SQLWARN2 OF SQLWARN OF SQLCA
           MOVE ZUT0000000F TO SQLWARN3 OF SQLWARN OF SQLCA
           MOVE ZUT00000010 TO SQLWARN4 OF SQLWARN OF SQLCA
           MOVE ZUT00000011 TO SQLWARN5 OF SQLWARN OF SQLCA
           MOVE ZUT00000012 TO SQLWARN6 OF SQLWARN OF SQLCA
           MOVE ZUT00000013 TO SQLWARN7 OF SQLWARN OF SQLCA
           MOVE ZUT00000014 TO SQLWARN8 OF SQLWARN OF SQLCA
           MOVE ZUT00000015 TO SQLWARN9 OF SQLWARN OF SQLCA
           MOVE ZUT00000016 TO SQLWARNA OF SQLWARN OF SQLCA
           MOVE ZUT00000017 TO SQLSTATE OF SQLCA
           ELSE
             CONTINUE
           END-IF
           END-IF.
       THROW-ASSERTION.
           SET ADDRESS OF AZ-COMPARE-ITEM-NAME TO
           AZ-COMPARE-ITEM-NAME-PTR.
           SET ADDRESS OF AZ-COMPARE-ITEM-VALUE TO
           AZ-COMPARE-ITEM-VALUE-PTR.
           SET ADDRESS OF AZ-COMPARE-ITEM-EXP-VALUE TO
           AZ-COMPARE-ITEM-EXP-VALUE-PTR.
      *    DISPLAY ERROR MESSAGE AND ENDS TEST
           DISPLAY '****************************************************
      -    '****************************'
           DISPLAY 'AZU2001W THE TEST "' AZ-TEST(1:AZ-TEST-LEN) '" FAILE
      -    'D DUE TO AN ASSERTION.'
           DISPLAY 'AZU1101I ' MESSAGE-TXT OF BZ-ASSERT(1:MESSAGE-LEN
           OF BZ-ASSERT)
           DISPLAY ' DATA ITEM NAME : '
           AZ-COMPARE-ITEM-NAME(1:AZ-COMPARE-ITEM-NAME-LEN)
           DISPLAY '  VALUE         : '
           AZ-COMPARE-ITEM-VALUE(1:AZ-COMPARE-ITEM-VALUE-LEN)
           DISPLAY '  EXPECTED VALUE: '
           AZ-COMPARE-ITEM-EXP-VALUE(1:AZ-COMPARE-ITEM-EXP-VALUE-LEN)
           DISPLAY '****************************************************
      -    '****************************'
           CALL BZUASSRT USING BZ-P1 BZ-P2 BZ-P3 BZ-ASSERT
           MOVE 1 TO TRACE-LEN OF BZ-TRACE
           STRING 'ITEM NAME='
           AZ-COMPARE-ITEM-NAME(1:AZ-COMPARE-ITEM-NAME-LEN)
               DELIMITED BY SIZE INTO TRACE-TXT OF BZ-TRACE
               WITH POINTER TRACE-LEN OF BZ-TRACE
             END-STRING
           SUBTRACT 1 FROM TRACE-LEN OF BZ-TRACE
           SET AZ-TRACE-PTR TO ADDRESS OF TRACE-TXT OF BZ-TRACE
           CALL 'XCHRFLTR' USING TRACE-LEN OF BZ-TRACE AZ-TRACE-PTR
           CALL BZUTRACE USING BZ-TRACE
           MOVE 1 TO TRACE-LEN OF BZ-TRACE
           STRING 'VALUE='
           AZ-COMPARE-ITEM-VALUE(1:AZ-COMPARE-ITEM-VALUE-LEN)
               DELIMITED BY SIZE INTO TRACE-TXT OF BZ-TRACE
               WITH POINTER TRACE-LEN OF BZ-TRACE
             END-STRING
           SUBTRACT 1 FROM TRACE-LEN OF BZ-TRACE
           CALL 'XCHRFLTR' USING TRACE-LEN OF BZ-TRACE AZ-TRACE-PTR
           CALL BZUTRACE USING BZ-TRACE
           MOVE 1 TO TRACE-LEN OF BZ-TRACE
           STRING 'EXPECTED VALUE='
           AZ-COMPARE-ITEM-EXP-VALUE(1:AZ-COMPARE-ITEM-EXP-VALUE-LEN)
               DELIMITED BY SIZE INTO TRACE-TXT OF BZ-TRACE
               WITH POINTER TRACE-LEN OF BZ-TRACE
             END-STRING
           SUBTRACT 1 FROM TRACE-LEN OF BZ-TRACE
           CALL 'XCHRFLTR' USING TRACE-LEN OF BZ-TRACE AZ-TRACE-PTR
           CALL BZUTRACE USING BZ-TRACE
           EXIT.
           EXIT.
       TEARDOWN.
           DISPLAY 'DB2_00E7_LGICDB01 SUCCESSFUL.'
           GOBACK.
       END PROGRAM 'DB2_00E7_LGICDB01'.
