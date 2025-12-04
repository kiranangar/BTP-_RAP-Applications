@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'test cds objects'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Ztest_Cds1_Basic
  with parameters
    p_agencyidno : abap.numc( 6 )
  as select from /dmo/travel
  association [1..1] to /dmo/customer as _Customer on /dmo/travel.customer_id = _Customer.customer_id
  association [0..1] to /dmo/agency as _Agency on $projection.agency_id = _Agency.agency_id
  
{

  key travel_id,
      
@UI.hidden: true
@Consumption.hidden: true
      agency_id,
      
      _Agency.name as agency_name,
      
      concat(_Customer.last_name, concat(',', _Customer.first_name) ) as customer_fullname,

      begin_date,

      end_date,

      @Semantics.amount.currencyCode: 'currency_code'
      round( total_price , 0 )                                        as rounded_total,

      currency_code

}
where
  agency_id = $parameters.p_agencyidno
