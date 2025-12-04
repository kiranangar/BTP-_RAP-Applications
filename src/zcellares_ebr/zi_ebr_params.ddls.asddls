
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.ignorePropagatedAnnotations: true
@EndUserText.label: 'EBR Process Parameters Interface View'

define view entity ZI_EBR_PARAMS
  as select from zebr_params
  association to parent ZI_EBR_HEADER as _Header on _Header.ebr_uuid = $projection.ebr_uuid 
{
  key param_uuid,
  key ebr_uuid,
  parameter_name,
  parameter_value,
  unit_of_measure,
  timestamp,
  source_system,
  operation_number,
  tenant_id,
  is_deleted,
  version,
  sync_status,
  
  // Expose association to parent
  _Header
}
//where  is_deleted = 'N'
