       >>SOURCE FORMAT FREE
       IDENTIFICATION DIVISION. 
       PROGRAM-ID. GETSUM.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
           LINKAGE SECTION.
               01 LNUM1 PIC 9 VALUE 5.
               01 LNUM2 PIC 9 VALUE 4.
               01 LSUM1 PIC 99.
       
       FILE SECTION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION USING LNUM1, LNUM2, LSUM1.
           COMPUTE LSUM1 = LNUM1 + LNUM2.
           
       EXIT PROGRAM

     
       