@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ebr Production Order Projection'
@Metadata.allowExtensions: true
define view entity zc_ebr_prodord as projection on ZI_EBR_PRODORD
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
    /* Associations */
    _Header: redirected to parent ZC_EBR_APP
}
