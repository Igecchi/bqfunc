CREATE OR REPLACE FUNCTION zerobyte.ZEROBYTE_TO_FLOAT64(a ARRAY< STRUCT< _ ARRAY< STRUCT< STRUCT< INT64 >
> > > >)
AS (
  `IF`(a IS NULL, NULL, zerobyte._NOT_NULL_IEEE_TO_FLOAT64(zerobyte.ZEROBYTE_TO_ARRAY_INT64(a)))
);
