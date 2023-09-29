%dw 2.0
output application/json
---
payload.entry map {
    PrimaryKey : payload.id,
    MRN: $.resource.subject.reference,
    DATESTART: $.resource.performedDateTime,
    DATEEND: $.resource.issued,
    VARIABLE_NAME: $.resource.code.coding.display[0],
    CODE: $.resource.code.coding.code[0],
    VOCABULARY: $.resource.code.coding.system[0],
    PRIORITY: $.resource.code.coding.display[0]
}