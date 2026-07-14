using { managed, cuid, Country, Currency } from '@sap/cds/common';
namespace my.captraining;


 entity SalesOrder: managed {
    key ID : UUID;
    salesNumber : Integer;
    customerName : localized String(20);
    customerCode : localized String(10);
    customerAdress : localized String(50);
    salesItem : Composition of many SalesItems on salesItem.items = $self;      //strict Association
}

entity SalesItems: managed {
    key ID : UUID;
    itemCategory : String;
    is_Available : Boolean;
    itemCreationDate : Date;
    items : Association to one SalesOrder;  // non-strict Association

}

