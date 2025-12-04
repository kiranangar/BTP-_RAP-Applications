
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.ignorePropagatedAnnotations: true
@EndUserText.label: 'EBR Quality Inspection Interface View'

define view entity ZI_EBR_QUALITY
  as select from zebr_quality
 association to parent ZI_EBR_HEADER as _Header on _Header.ebr_uuid = $projection.ebr_uuid
{
  key quality_uuid,
  key ebr_uuid,
  inspection_lot,
  characteristic,
  qc_result,
  target_value,
  lower_limit,
  upper_limit,
  inspection_date,
  inspection_time,
  inspector,
  status,
  tenant_id,
  is_deleted,
  version,
  sync_status,
  
  // Expose association to parent
  _Header
}
//where is_deleted = 'N'
