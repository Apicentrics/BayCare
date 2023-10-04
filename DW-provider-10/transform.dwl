%dw 2.0
output application/json  
---
payload.entry map {
  PrimaryKey: payload.id,
  PROVIDER_ID: $.resource.resourceType ++ '/' ++ $.resource.id, // we didn't understand this field. we conatinated both resourceType and id. if it is not the exact please let us know.
  NPI: $.resource.identifier."type", // for this field which field we have to map.
  PROVIDER_NAME: $.resource.name, // for this field which field we have to map.
  PROVIDER_SPECIALTY: '', // no data
  PROVIDER_TYPE: '', // we didn't find and understand this field
  PROVIDER_PHONE: $.resource.telecom, // .phone[0] field missing
  PROVIDER_EMAIL: $.resource.telecom.value[0]
}
