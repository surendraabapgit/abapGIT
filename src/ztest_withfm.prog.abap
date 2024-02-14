*&---------------------------------------------------------------------*
*& Report ZTEST_WITHFM
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTEST_WITHFM.
PARAMETERS carrier TYPE s_carr_id.
DATA: jtab TYPE spfli_tab,
  wa  LIKE LINE OF jtab.
CALL FUNCTION 'READ_SPFLI_INTO_TABLE'
   EXPORTING
  id = carrier
   IMPORTING
  itab = jtab
   EXCEPTIONS
  not_found = 1
  OTHERS = 2.
CASE sy-subrc.
  WHEN 1.
  MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno.
  WHEN 2.
  MESSAGE e702(at).
 ENDCASE.
LOOP AT jtab INTO wa.
  WRITE: / wa-carrid, wa-connid, wa-cityfrom, wa-cityto.
ENDLOOP.
