%dw 2.0
output application/json
---
payload.entry map{
    PrimaryKey: payload.id,
    MRN: $.resource.subject.reference,
    DATESTART: $.resource.dosageInstruction.timing.repeat.boundsPeriod.start[0],
    DATEEND: $.boundsPeriod.end,
    VARIABLE_NAME:  $.resource.category[0].coding[0].code,
    //VALUE: $.resource.status,
    CODE: $.resource.medicationCodeableConcept.coding.code[0], 
    VOCABULARY: $.resource.category[0].coding[0].system, // need to see BR
    DAYS_SUPPLY: $.resource.dosageInstruction.timing.repeat[0].boundsPeriod[0],
    DOSE: $.dosageinstruction, //need to see br
    QUANTITY: $.resource.dosageInstruction.doseAndRate.doseQuantity.value, // have to see once
    REFILLS:$.resource.dispenseRequest.numberOfRepeatsAllowed, 
    FREQUENCY: $.resource.dosageInstruction.patientInstructionn,//need to check
    ROUTE: $.resource.dosageInstruction
}