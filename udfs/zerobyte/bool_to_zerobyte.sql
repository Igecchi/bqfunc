CREATE OR REPLACE FUNCTION
  zerobyte.BOOL_TO_ZEROBYTE(b BOOL)AS(CASE
      WHEN b IS NULL THEN NULL
      WHEN b THEN STRUCT(NULL AS _)
      WHEN NOT b THEN STRUCT(STRUCT(NULL AS _)AS _)
    ELSE
    ERROR('Unsupported value')
  END
    )