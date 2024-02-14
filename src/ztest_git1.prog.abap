*&---------------------------------------------------------------------*
*& Report ZTEST_GIT1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTEST_GIT1.


TABLES ZEMP_TKS.

SELECT * FROM ZEMP_TKS.
  WRITE: ZEMP_TKS.
  ENDSELECT.

ULINE.

  SELECT * FROM ZEMP_TKS.
  WRITE: / ZEMP_TKS.
  ENDSELECT.

 ULINE.
  SKIP 2.

SELECT * FROM ZEMP_TKS.
  WRITE: ZEMP_TKS.
  ENDSELECT.

ULINE.

  SELECT * FROM ZEMP_TKS.
  WRITE: / ZEMP_TKS.
  WRITE: /.
  ENDSELECT.
