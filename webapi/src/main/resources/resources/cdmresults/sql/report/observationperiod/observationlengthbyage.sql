SELECT
  STRING(
    cast(cast(CASE WHEN ard1.analysis_id = 107 THEN ard1.stratum_1 ELSE null END AS INT) * 10 AS VARCHAR(11)), '-',
    cast((cast(CASE WHEN ard1.analysis_id = 107 THEN ard1.stratum_1 ELSE null END AS INT) + 1) * 10 - 1 AS VARCHAR(11))
  )                                                           AS category,
  ard1.min_value                                              AS min_value,
  ard1.p10_value                                              AS p10_value,
  ard1.p25_value                                              AS p25_value,
  ard1.median_value                                           AS median_value,
  ard1.p75_value                                              AS p75_value,
  ard1.p90_value                                              AS p90_value,
  ard1.max_value                                              AS max_value
FROM @results_database_schema.achilles_results_dist ard1
WHERE ard1.analysis_id = 107
