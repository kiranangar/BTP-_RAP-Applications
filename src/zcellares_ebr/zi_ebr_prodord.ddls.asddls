
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.ignorePropagatedAnnotations: true
@EndUserText.label: 'EBR Production Order Interface View'

define view entity ZI_EBR_PRODORD
  as select from zebr_prodord
  association to parent ZI_EBR_HEADER as _Header on _Header.ebr_uuid = $projection.ebr_uuid
{
  key prodord_uuid,
  key ebr_uuid,
  order_type,
  planned_start_date,
  planned_start_time,
  planned_end_date,
  planned_end_time,
  actual_start_date,
  actual_start_time,
  actual_end_date,
  actual_end_time,
  work_center,
  operation_number,
  tenant_id,
  is_deleted,
  version,
  sync_status,
  
  // Expose association to parent
  _Header
}
//where is_deleted = 'N'
