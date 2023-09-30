%dw 2.0
output application/json
---  
payload.entry map{
    PrimaryKey: payload.id,
    PROVIDER_ID: $.resource.id,
    NPI: $.resource.identifier."type",
    PROVIDER_NAME:$.resource.name,
    //PROVIDER_SPECIALTY: no data//
    //PROVIDER_TYPE: No data
    PROVIDER_PHONE:$.resource.telecom, //.phone field missing
    PROVIDER_EMAIL:$.resource.telecom.value


}