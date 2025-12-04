
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.ignorePropagatedAnnotations: true
@EndUserText.label: 'EBR Electronic Signature Interface View'

define view entity ZI_EBR_SIGNATURE
  as select from zebr_signature
  association to parent ZI_EBR_HEADER as _Header on _Header.ebr_uuid = $projection.ebr_uuid
{
  key signature_uuid,
  key ebr_uuid,
  user_id,
  user_name,
  signature_purpose,
  signature_meaning,
  timestamp,
  ip_address,
  signature_reason,
  tenant_id,
  is_deleted,
  version,
  sync_status,
  
  // Expose association to parent
  _Header
}
//where is_deleted = 'N'
