CREATE OR REPLACE FUNCTION
  zerobyte.ZEROBYTE_TO_INT64(a ARRAY<STRUCT<_ STRUCT<_ INT64>>>)AS(
  IF
    (a IS NULL,
      NULL,
      (
      SELECT
        SUM(CASE
            WHEN s IS NULL THEN ERROR('Unsupported value')
            WHEN s._ IS NULL THEN 0
            WHEN s._._ IS NULL THEN 1<<o
          ELSE
          ERROR('Unsupported value')
        END
          )
      FROM
        UNNEST(a)s
      WITH
      OFFSET
        AS o)))