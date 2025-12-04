@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.ignorePropagatedAnnotations: true
@EndUserText.label: 'EBR Header Interface View '

define root view entity ZI_EBR_HEADER
  as select from zebr_header
  composition of exact one to many ZI_EBR_MATERIAL  as _Materials
  composition of exact one to many ZI_EBR_DEVIATION as _Deviations
  composition of exact one to many ZI_EBR_PRODORD   as _ProductionOrder
  composition of exact one to many ZI_EBR_PARAMS    as _ProcessParams
  composition of exact one to many ZI_EBR_QUALITY   as _QualityResults
  composition of exact one to many ZI_EBR_SIGNATURE as _Signatures

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

      @Semantics.user.createdBy: true
      created_by,

      @Semantics.systemDateTime.createdAt: true
      created_at,

      @Semantics.user.lastChangedBy: true
      last_changed_by,

      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at,

      tenant_id,
      is_deleted,
      version,
      sync_status,

      // Expose associations
      _Materials,
      _ProductionOrder,
      _ProcessParams,
      _QualityResults,
      _Deviations,
      _Signatures
}
//where  is_deleted = 'N'
