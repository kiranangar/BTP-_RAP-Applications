@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'EBR Deviation Projection'
@Metadata.allowExtensions: true
define view entity ZC_EBR_DEVIATION as projection on ZI_EBR_DEVIATION
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
    /* Associations */
    _Header: redirected to parent ZC_EBR_APP
    
}
