@EndUserText.label: 'PO Header Basic View'
@VDM.viewType: #BASIC

define view entity ZIVPoHeader
  as select from zvpo_header
{
  key po_id,
      vendor_id,
      order_date
}
