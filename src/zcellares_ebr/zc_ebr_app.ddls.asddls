@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'EBR Appplication Projection'
@Metadata.allowExtensions: true
define root view entity ZC_EBR_APP
  provider contract transactional_query
  as projection on ZI_EBR_HEADER

{
  key ebr_uuid,
      batch_number,
      product_id,
      product_name,
      production_order,
      plant,
      creation_date,
      creation_time,
      status,
      created_by,
      created_at,
      last_changed_by,
      last_changed_at,
      tenant_id,
      is_deleted,
      version,
      sync_status,
      /* Associations */

      _Materials       : redirected to composition child ZC_EBR_MATERIAL,

      _ProcessParams   : redirected to composition child zc_ebr_params,
      _ProductionOrder : redirected to composition child zc_ebr_prodord,

      _QualityResults  : redirected to composition child zc_ebr_quality,
      _Deviations      : redirected to composition child ZC_EBR_DEVIATION,

      _Signatures      : redirected to composition child zc_ebr_signature
}
