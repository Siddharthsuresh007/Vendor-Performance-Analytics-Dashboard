@EndUserText.label: 'Vendor Basic View'
@VDM.viewType: #BASIC

define view entity ZIVVendor
  as select from zvp_vendor
{
  key vendor_id,
      vendor_name
}
