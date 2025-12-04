
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.ignorePropagatedAnnotations: true
@EndUserText.label: 'EBR Material Interface View '

define view entity ZI_EBR_MATERIAL
  as select from zebr_material
  association to parent ZI_EBR_HEADER as _Header on _Header.ebr_uuid = $projection.ebr_uuid
{
  key material_uuid,
  key ebr_uuid,
  material_id,
  material_description,
  quantity,
  unit_of_measure,
  batch,
  storage_location,
  created_at,
  tenant_id,
  is_deleted,
  version,
  sync_status,
  
  // Expose association to parent
  _Header 
}
//where  is_deleted = 'N'
