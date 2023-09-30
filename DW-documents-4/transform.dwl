%dw 2.0
output application/json
---
payload.entry map{
    PrimaryKey: payload.id,
    MRN: $.resource.subject.reference,
    DOCUMENT_ID:  $.resource.id,
     DATESTART:$.resource.content.attachment[0],
     DATEEND:$.resource.context.period[1]   ,
     TEXT:$.resource."type".text

}