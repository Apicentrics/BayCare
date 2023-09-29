%dw 2.0
output application/json
---
payload.entry map{
    PrimaryKey: payload.id,
    MRN: $.resource.subject.reference,
   ENCOUNTER_ID: $.resource.id,
    DATESTART: $.resource.identifier.period.start[0],
    DATEEND: $.resource.end, // not available
    DURATION: " ", //need to check br
    ORIGINAL_EVENT_TYPE: $.resource.class.code,
    PROVIDER_ID:$.resource.participant.individual.reference[0],
    PROVIDER_NAME: $.resource.participant.individual.display[0],
    PROVIDER_SPECIALTY: $.resource.participant.individual.reference[0]
    }