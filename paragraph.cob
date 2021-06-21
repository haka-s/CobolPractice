           >>SOURCE FORMAT FREE
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PARAGRAPH.
       AUTHOR. Santiago Motta.
       DATE-WRITTEN. May 24th 2021.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       
       PROCEDURE DIVISION.
       SUBONE.
           DISPLAY "In Paragraph 1"
               PERFORM SUBTWO
               DISPLAY "RETURNED TO PARAGRAPH 1"
               PERFORM 2 TIMES
                   DISPLAY "REPEAT"
               END-PERFORM
               STOP RUN.

       SUBTHREE.
           DISPLAY "In Paragraph 3".

       SUBTWO.
           DISPLAY "In Paragraph 2"
               PERFORM SUBTHREE
               DISPLAY "RETURNED TO PARAGRAPH 2".


       SUBFOUR.
           DISPLAY "REPEAT"
               PERFORM SUBTHREE
               DISPLAY "RETURNED TO PARAGRAPH 2".

               

       STOP RUN.