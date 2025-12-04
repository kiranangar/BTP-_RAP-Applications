
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.ignorePropagatedAnnotations: true
@EndUserText.label: 'EBR Deviation Interface View - Cloud'

define view entity ZI_EBR_DEVIATION
  as select from zebr_deviation
  association to parent ZI_EBR_HEADER as _Header on _Header.ebr_uuid = $projection.ebr_uuid
{
  key deviation_uuid,
  key ebr_uuid,
  deviation_description,
  deviation_type,
  severity,
  reported_by,
  report_date,
  report_time,
  status,
  resolution,
  resolved_by,
  resolution_date,
  resolution_time,
  tenant_id,
  is_deleted,
  version,
  sync_status,
  
  // Expose association to parent
  _Header
}
//where  is_deleted = 'N'
