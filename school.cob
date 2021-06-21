       IDENTIFICATION DIVISION. 
       PROGRAM-ID. SCHOOL.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           CLASS PassingScore IS "A" THRU "C","D".
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 AGE PIC 99 VALUE 0.
       01 GRADE PIC 99 VALUE 0.
       01 SCORE PIC X(1) VALUE "B".
       01 CANVOTEFLAG PIC 9 VALUE 0.
           88 CANVOTE VALUE 1.
           88 CANTVOTE VALUE 0.
       01 TESTNUMBER PIC X.
           88 ISPRIME VALUE "1","3","5","7".
           88 ISODD VALUE "1","3","5","7","9".
           88 ISEVEN VALUE "2","4","6","8".
           88 LESSTHEN5 VALUE "1" THRU "4".
           88 ANUMBER VALUE "0" THRU "9".
       PROCEDURE DIVISION.
       DISPLAY "ENTER AGE " WITH NO ADVANCING
       ACCEPT AGE
       IF AGE >= 18 THEN
           DISPLAY "YOU CAN VOTE"
       ELSE
           DISPLAY "YOU CAN'T VOTE"
       END-IF


       STOP RUN.
