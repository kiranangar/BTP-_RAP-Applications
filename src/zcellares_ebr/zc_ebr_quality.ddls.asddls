@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'EBR Quality Projection'
@Metadata.allowExtensions: true
define view entity zc_ebr_quality as projection on ZI_EBR_QUALITY
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
    /* Associations */
    _Header: redirected to parent ZC_EBR_APP
}
