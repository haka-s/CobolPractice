           >>SOURCE FORMAT FREE
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAIN.
       AUTHOR. Santiago Motta.
       DATE-WRITTEN. May 24th 2021.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 UserName PIC X(30) VALUE "YOU".
       01 Num1 PIC 99 VALUE ZEROS.
       01 Num2 PIC 99 VALUE ZEROS.
       01 Total PIC 999 VALUE 0.
       01 SSNum.
           02 SSArea PIC 999.           
           02 SSGroup PIC 99.
           02 SSSerial PIC 9999.
       
       PROCEDURE DIVISION.
       DISPLAY "What is your Name " WITH NO advancing
       ACCEPT UserName
       DISPLAY "hello " UserName 
       MOVE ZERO TO UserName
       DISPLAY UserName
       DISPLAY "enter 2 numbers to sum "
       ACCEPT Num1
       ACCEPT Num2
       COMPUTE Total = Num1 + Num2
       DISPLAY Num1 " + " Num2 " = " Total
       DISPLAY "Enter ur SSN "
       ACCEPT SSNum
       DISPLAY "Area " SSArea
       



       STOP RUN.