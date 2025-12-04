@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'EBR Mateial Projection'
@Metadata.allowExtensions: true
define view entity ZC_EBR_MATERIAL 
as projection on ZI_EBR_MATERIAL
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
    /* Associations */
    _Header : redirected to parent ZC_EBR_APP
}
