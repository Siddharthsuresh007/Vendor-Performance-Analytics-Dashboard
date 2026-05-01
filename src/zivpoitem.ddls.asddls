@EndUserText.label: 'PO Item Basic View'
@VDM.viewType: #BASIC

define view entity ZIVPoItem
  as select from zvpo_item
{
  key item_id,
      po_id,
      planned_date,
      actual_date,
      quantity,

      case 
        when actual_date > planned_date then 1
        else 0
      end as delay_flag
}
