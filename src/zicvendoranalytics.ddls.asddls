@EndUserText.label: 'Vendor Analytics Composite'
@VDM.viewType: #COMPOSITE

define view entity ZICVendorAnalytics
  as select from ZIVPoItem as item
  inner join ZIVPoHeader as header
    on item.po_id = header.po_id
{
  key header.vendor_id,

      count(*)             as total_orders,
      sum(item.delay_flag) as delayed_orders,

      ( sum(item.delay_flag) * 100 ) / count(*) as delay_percentage,

      ( ( count(*) - sum(item.delay_flag) ) * 100 ) / count(*) as on_time_rate
}
group by header.vendor_id
