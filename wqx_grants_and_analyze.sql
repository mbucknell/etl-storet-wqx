show user;
select * from global_name;
set timing on;
set serveroutput on;
whenever sqlerror exit failure rollback;
whenever oserror exit failure rollback;
select 'start time: ' || systimestamp from dual;

grant select on activity to wqp_core;
grant select on activity_conducting_org to wqp_core;
grant select on activity_media to wqp_core;
grant select on activity_media_subdivision to wqp_core;
grant select on activity_metric to wqp_core;
grant select on activity_metric_index to wqp_core;
grant select on activity_project to wqp_core;
grant select on activity_type to wqp_core;
grant select on address_type to wqp_core;
grant select on analytical_method to wqp_core;
grant select on analytical_method_context to wqp_core;
grant select on assemblage to wqp_core;
grant select on attached_object to wqp_core;
grant select on biological_habitat_index to wqp_core;
grant select on biological_intent to wqp_core;
grant select on cell_form to wqp_core;
grant select on cell_shape to wqp_core;
grant select on characteristic to wqp_core;
grant select on citation to wqp_core;
grant select on container_color to wqp_core;
grant select on container_type to wqp_core;
grant select on country to wqp_core;
grant select on county to wqp_core;
grant select on detection_quant_limit_type to wqp_core;
grant select on electronic_address_type to wqp_core;
grant select on epa_region to wqp_core;
grant select on frequency_class_descriptor to wqp_core;
grant select on habit to wqp_core;
grant select on horizontal_collection_method to wqp_core;
grant select on horizontal_reference_datum to wqp_core;
grant select on measurement_unit to wqp_core;
grant select on method_speciation to wqp_core;
grant select on metric_type to wqp_core;
grant select on metric_type_context to wqp_core;
grant select on monitoring_location to wqp_core;
grant select on monitoring_location_type to wqp_core;
grant select on monitoring_location_weight to wqp_core;
grant select on net_type to wqp_core;
grant select on organization to wqp_core;
grant select on org_address to wqp_core;
grant select on org_electronic_address to wqp_core;
grant select on org_phone to wqp_core;
grant select on phone_type to wqp_core;
grant select on project to wqp_core;
grant select on reference_location_type to wqp_core;
grant select on relative_depth to wqp_core;
grant select on result to wqp_core;
grant select on result_detection_condition to wqp_core;
grant select on result_detect_quant_limit to wqp_core;
grant select on result_frequency_class to wqp_core;
grant select on result_lab_comment to wqp_core;
grant select on result_lab_sample_prep to wqp_core;
grant select on result_measure_qualifier to wqp_core;
grant select on result_statistical_base to wqp_core;
grant select on result_status to wqp_core;
grant select on result_taxon_detail to wqp_core;
grant select on result_taxon_feeding_group to wqp_core;
grant select on result_taxon_habit to wqp_core;
grant select on result_temperature_basis to wqp_core;
grant select on result_time_basis to wqp_core;
grant select on result_value_type to wqp_core;
grant select on result_weight_basis to wqp_core;
grant select on sample_collection_equip to wqp_core;
grant select on sample_fraction to wqp_core;
grant select on sample_tissue_anatomy to wqp_core;
grant select on sampling_design_type to wqp_core;
grant select on state to wqp_core;
grant select on taxon to wqp_core;
grant select on thermal_preservative to wqp_core;
grant select on time_zone to wqp_core;
grant select on toxicity_test_type to wqp_core;
grant select on tribe to wqp_core;
grant select on vertical_collection_method to wqp_core;
grant select on vertical_reference_datum to wqp_core;
grant select on voltinism to wqp_core;
select 'end time - grants: ' || systimestamp from dual;

select 'analyze wqx tables start time: ' || systimestamp from dual;

begin
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'ACTIVITY', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'ACTIVITY_CONDUCTING_ORG', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'ACTIVITY_MEDIA', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'ACTIVITY_MEDIA_SUBDIVISION', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'ACTIVITY_METRIC', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'ACTIVITY_METRIC_INDEX', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'ACTIVITY_PROJECT', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'ACTIVITY_TYPE', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'ADDRESS_TYPE', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'ANALYTICAL_METHOD', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'ANALYTICAL_METHOD_CONTEXT', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'ASSEMBLAGE', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'ATTACHED_OBJECT', method_opt => 'FOR ALL INDEXED COLUMNS');

	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'BIOLOGICAL_HABITAT_INDEX', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'BIOLOGICAL_INTENT', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'CELL_FORM', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'CELL_SHAPE', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'CHARACTERISTIC', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'CITATION', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'CONTAINER_COLOR', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'CONTAINER_TYPE', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'COUNTRY', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'COUNTY', method_opt => 'FOR ALL INDEXED COLUMNS');

	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'DETECTION_QUANT_LIMIT_TYPE', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'ELECTRONIC_ADDRESS_TYPE', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'EPA_REGION', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'FREQUENCY_CLASS_DESCRIPTOR', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'HABIT', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'HORIZONTAL_COLLECTION_METHOD', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'HORIZONTAL_REFERENCE_DATUM', method_opt => 'FOR ALL INDEXED COLUMNS');

	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'MEASUREMENT_UNIT', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'METHOD_SPECIATION', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'METRIC_TYPE', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'METRIC_TYPE_CONTEXT', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'MONITORING_LOCATION', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'MONITORING_LOCATION_TYPE', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'MONITORING_LOCATION_WEIGHT', method_opt => 'FOR ALL INDEXED COLUMNS');

	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'NET_TYPE', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'ORGANIZATION', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'ORG_ADDRESS', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'ORG_ELECTRONIC_ADDRESS', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'ORG_PHONE', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'PHONE_TYPE', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'PROJECT', method_opt => 'FOR ALL INDEXED COLUMNS');

	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'REFERENCE_LOCATION_TYPE', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'RELATIVE_DEPTH', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'RESULT', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'RESULT_DETECTION_CONDITION', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'RESULT_DETECT_QUANT_LIMIT', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'RESULT_FREQUENCY_CLASS', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'RESULT_LAB_COMMENT', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'RESULT_LAB_SAMPLE_PREP', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'RESULT_MEASURE_QUALIFIER', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'RESULT_STATISTICAL_BASE', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'RESULT_STATUS', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'RESULT_TAXON_DETAIL', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'RESULT_TAXON_FEEDING_GROUP', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'RESULT_TAXON_HABIT', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'RESULT_TEMPERATURE_BASIS', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'RESULT_TIME_BASIS', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'RESULT_VALUE_TYPE', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'RESULT_WEIGHT_BASIS', method_opt => 'FOR ALL INDEXED COLUMNS');

	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'SAMPLE_COLLECTION_EQUIP', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'SAMPLE_FRACTION', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'SAMPLE_TISSUE_ANATOMY', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'SAMPLING_DESIGN_TYPE', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'STATE', method_opt => 'FOR ALL INDEXED COLUMNS');

	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'TAXON', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'THERMAL_PRESERVATIVE', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'TIME_ZONE', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'TOXICITY_TEST_TYPE', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'TRIBE', method_opt => 'FOR ALL INDEXED COLUMNS');

	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'VERTICAL_COLLECTION_METHOD', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'VERTICAL_REFERENCE_DATUM', method_opt => 'FOR ALL INDEXED COLUMNS');
	dbms_stats.gather_table_stats(ownname => 'WQX', tabname => 'VOLTINISM', method_opt => 'FOR ALL INDEXED COLUMNS');

end;
/

select 'analyze wqx tables end time: ' || systimestamp from dual;
