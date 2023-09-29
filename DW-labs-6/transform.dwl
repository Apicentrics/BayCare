%dw 2.0
output application/json
---
payload.entry map{
    PrimaryKey: payload.id,
    MRN: $.resource.subject.reference,
    DATESTART: $.resource.issued,
    DATEEND: $.resource.meta.lastUpdated,
    //check proper code value
    VARIABLE_NAME: $.resource.category[0].coding[0].code,
    VALUE: $.resource.status,
    CODE: $.resource.code.coding[0].code,
    VOCABULARY: $.resource.category[0].coding[0].system,
    DESCRIPTION_UNIT: $.resource.component.valueQuantity,
    //do we get one value or reference range of multiple
    UPPER_LIMIT_NORMAL: $.resource.referenceRange[0].high,
    LOWER_LIMIT_NORMAL: $.resource.referenceRange[0].low


}