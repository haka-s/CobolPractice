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
       

       IF AGE LESS THAN 5 THEN
           DISPLAY "Stay Home"

       END-IF


       IF AGE = 5 THEN
           DISPLAY "Go to kindergarten"
       END-IF

       IF AGE > 5 AND AGE <18 THEN
           COMPUTE GRADE = AGE - 5
           DISPLAY "Go to grade " GRADE
       END-IF

       IF AGE GREATER THAN OR EQUAL TO 18
           DISPLAY "GO TO COLLEGE"
       END-IF

       IF SCORE IS PassingScore THEN
           DISPLAY " YOU PASSED"
       ELSE 
           DISPLAY " YOU FAILED"
       END-IF


       IF SCORE IS NOT NUMERIC THEN
           DISPLAY "not a number"
       END-IF


       IF AGE > 18 THEN
           SET CANVOTE TO TRUE
       ELSE
           SET CANTVOTE TO TRUE

       END-IF
       DISPLAY "VOTE " CANVOTEFLAG



       DISPLAY "ENTER SINGLE NUMBER OR X TO EXIT"
       ACCEPT TESTNUMBER
       PERFORM UNTIL NOT ANUMBER
           EVALUATE TRUE
               WHEN ISPRIME DISPLAY "PRIME"
               WHEN ISODD DISPLAY "ODD"
               WHEN ISEVEN DISPLAY "EVEN"
               WHEN LESSTHEN5 DISPLAY "LESS THEN 5"
               WHEN OTHER DISPLAY "DEFAULT"  

           END-EVALUATE
           ACCEPT TESTNUMBER
       END-PERFORM
       
       STOP RUN.
