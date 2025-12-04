@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'EBR Params Projection'
@Metadata.allowExtensions: true
define view entity zc_ebr_params as projection on ZI_EBR_PARAMS
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
    /* Associations */
    _Header : redirected to parent ZC_EBR_APP
}
