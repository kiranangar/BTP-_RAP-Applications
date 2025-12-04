
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'consumption view'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ztest_Cds1_root 
with parameters
    p_agencyid : abap.numc( 6 )
as select from Ztest_Cds1_Basic ( p_agencyidno : $parameters.p_agencyid )

{
    key travel_id,
    agency_id,
    agency_name,
    customer_fullname,
    begin_date,
    end_date,
    @Semantics.amount.currencyCode: 'currency'
    rounded_total as total_fee,
    currency_code as currency
}where agency_id = $parameters.p_agencyid
