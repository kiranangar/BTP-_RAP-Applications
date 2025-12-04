@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'EBR Signature Projection'
@Metadata.allowExtensions: true
define view entity zc_ebr_signature as projection on ZI_EBR_SIGNATURE
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
    /* Associations */
    _Header: redirected to parent ZC_EBR_APP
}
