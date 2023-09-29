%dw 2.0
output application/json
---
payload.entry map{
    PrimaryKey: payload.id,

    MRN: $.resource.subject.reference, //no fields found in response

    RACE: $.resource.extension.extension[0][0],
    ETHNICITY: $.resource.extension.extension[0][0],
    DATE_OF_BIRTH: $.resource.birthDate,
    SEX: $.resource.gender,
    MARITAL_STATUS: $.resource.maritalStatus,
    FULL_NAME: $.resource.contact.name,
    FIRST_NAME: $.resource.contact.name,
    LAST_NAME: $.resource.contact.name,

    SSN: $.resource.SSN, //no fields found in response
    HOME_PHONE_NUMBER: $.resource.category[0].coding[0].system, //no fields found in response
    WORK_PHONE_NUMBER: $.resource.component.valueQuantity, //no fields found in response
    EMAIL: $.resource.referenceRange[0].high, //no fields found in response

    ADDRESS1: $.resource.address[0],
    ADDRESS2: $.resource.address[0],
    CITY: $.resource.address.city[0],
    STATE: $.resource.address.state[0],
    POSTAL_CODE: $.resource.address.postalCode[0],

    PRIMARY_PROVIDER_ID: $.resource.referenceRange[0].high //no fields found in response
}