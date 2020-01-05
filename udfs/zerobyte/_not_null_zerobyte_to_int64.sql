CREATE OR REPLACE FUNCTION
  zerobyte._NOT_NULL_ZEROBYTE_TO_INT64(a ARRAY<STRUCT<_ STRUCT<_ INT64>>>)AS((
    SELECT
      SUM(
      IF
        (_ IS NULL,
          0,
          1<<o))
    FROM
      UNNEST(a)
    WITH
    OFFSET
      AS o))