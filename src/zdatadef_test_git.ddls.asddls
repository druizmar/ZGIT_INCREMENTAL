@AbapCatalog.sqlViewName: 'ZVIEWTEST_GIT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Data definition for testing'
define view ZDATADEF_TEST_GIT as select from ztabletest_git {
         key booking              as Booking,
         @Search.defaultSearchElement: true
         customername         as CustomerName,
         numberofpassengers   as NumberOfPassengers,
         emailaddress         as EmailAddress,
         country,
         dateofbooking        as DateOfBooking,
         dateoftravel         as DateOfTravel,
         @Semantics.amount.currencyCode: 'CurrencyCode'
         cost,
         @Semantics.currencyCode: true
         currencycode          as CurrencyCode,
         lastchangedat         as LastChangedAt
       
}
