select  concept_hierarchy.concept_id,
	STRING(
		coalesce(concept_hierarchy.level4_concept_name,'NA'), '||',
		coalesce(concept_hierarchy.level3_concept_name,'NA'), '||',
		coalesce(concept_hierarchy.level2_concept_name,'NA'), '||',
		coalesce(concept_hierarchy.level1_concept_name,'NA'), '||',
		coalesce(concept_hierarchy.concept_name,'NA')
	) concept_path,
	hr1.count_value as num_persons, 
	ROUND(1.0*hr1.count_value / denom.count_value,5) as percent_persons,
	ROUND(1.0*hr2.count_value / hr1.count_value,5) as records_per_person
from (
    select stratum_1, count_value
    from @ohdsi_database_schema.heracles_results 
    where analysis_id = 400 and cohort_definition_id = @cohortDefinitionId
		GROUP BY stratum_1, count_value
) hr1
inner join (
    select stratum_1, count_value 
    from @ohdsi_database_schema.heracles_results
    where analysis_id = 401 and cohort_definition_id = @cohortDefinitionId
		GROUP BY stratum_1, count_value
) hr2 on hr1.stratum_1 = hr2.stratum_1
INNER JOIN @ohdsi_database_schema.concept_hierarchy concept_hierarchy
  ON CAST(CASE WHEN isNumeric(hr1.stratum_1) = 1 THEN hr1.stratum_1 ELSE null END AS INT) = concept_hierarchy.concept_id
    AND concept_hierarchy.treemap='Condition'
CROSS JOIN (
    select count_value from @ohdsi_database_schema.heracles_results where analysis_id = 1 and cohort_definition_id = @cohortDefinitionId
) denom
order by hr1.count_value desc
