@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vendor KPI Cube'
@Analytics.dataCategory: #CUBE
@VDM.viewType: #BASIC

define view entity ZICVENDORCUBE
  as select from ZICVendorAnalytics
{
  key vendor_id,

      @Aggregation.default: #SUM
      total_orders,

      @Aggregation.default: #SUM
      delayed_orders,

      @Aggregation.default: #NONE
      delay_percentage,

      @Aggregation.default: #NONE
      on_time_rate
}
