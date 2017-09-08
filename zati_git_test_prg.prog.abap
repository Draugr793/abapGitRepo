*&---------------------------------------------------------------------*

REPORT zati_git_test_prg.

*&---------------------------------------------------------------------*
*& --- Created by ---
*& Name      : André Tiebing
*& Company   : Realcore Group
*& Created on: 25 August, 2017
*&---------------------------------------------------------------------*
*& --- Description ---
*& Test Report for abapGit.
*&---------------------------------------------------------------------*

TABLES: sflight.

*----------------------------------------------------------------------*
* Includes
*----------------------------------------------------------------------*

*----------------------------------------------------------------------*
* Selection-Screen
*----------------------------------------------------------------------*

SELECT-OPTIONS: s_carrid FOR sflight-carrid,
                s_connid FOR sflight-connid.

*----------------------------------------------------------------------*
* Events
*----------------------------------------------------------------------*

START-OF-SELECTION.

  DATA: lt_flights TYPE STANDARD TABLE OF sflight.


  SELECT carrid connid
  INTO CORRESPONDING FIELDS OF TABLE lt_flights
  FROM sflight
  WHERE carrid IN s_carrid
    AND connid IN s_connid
    AND currency EQ 'EUR'.
