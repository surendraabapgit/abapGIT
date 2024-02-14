FUNCTION ZTEST_FM3.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     VALUE(ID) TYPE  SPFLI-CARRID DEFAULT 'LH'
*"  EXPORTING
*"     VALUE(ITAB) TYPE  SPFLI_TAB
*"  EXCEPTIONS
*"      NOT_FOUND
*"----------------------------------------------------------------------

SELECT * FROM spfli WHERE carrid = @id INTO TABLE @itab.

  IF sy-subrc NE 0.
    MESSAGE e007(sabapdemos) RAISING not_found.
  ENDIF.




ENDFUNCTION.
