using { my.captraining as myCapSrv} from '../db/schema';

service SalesOrderService {
    @odata.draft.enabled    
    entity SalesOrder as projection on myCapSrv.SalesOrder;
    entity SalesItems as projection on myCapSrv.SalesItems;
}

annotate SalesOrderService.SalesOrder with @(
    UI:{
        SelectionFields  : [ salesNumber, customerName, customerCode],
        LineItem  : [
            {
                $Type : 'UI.DataField',
                Value : salesNumber
            },
            {
                $Type : 'UI.DataField',
                Value : customerName
            },
            {
                $Type : 'UI.DataField',
                Value : customerCode
            },
            {
                $Type : 'UI.DataField',
                Value : customerAdress
            },
            {
            $Type : 'UI.DataField',
            Value : modifiedAt                    
            },
            {
            $Type : 'UI.DataField',
            Value : createdAt                  
            }

        ],

        FieldGroup #BasicData: {
            $Type: 'UI.FieldGroup',
            Data:[
                {
                $Type : 'UI.DataField',
                Value : salesNumber                    
                },
                {
                $Type : 'UI.DataField',
                Value : customerCode                    
                },
                {
                $Type : 'UI.DataField',
                Value : customerName
                },
                {
                $Type : 'UI.DataField',
                Value : customerAdress
                },
                {
                $Type : 'UI.DataField',
                Value : modifiedAt                    
                },
                {
                $Type : 'UI.DataField',
                Value : createdAt                  
                }
            ]
        },

        Facets : [
            {
                $Type: 'UI.ReferenceFacet',
                Target: '@UI.FieldGroup#BasicData',
                Label: 'Sales Order Info',
                ID: 'headerID'
            },
            {
                $Type: 'UI.ReferenceFacet',
                Target: 'salesItem/@UI.LineItem',
                Label: 'Sales Items Info',
                ID: 'headerItemID'
            }

        ]
        

}
){
    ID @UI: {Hidden};
    salesNumber @title: 'Sales Order';
    customerName @title: 'Customer Name';
    customerCode @title: 'Customer Code';
    customerAdress @title : 'Customer Adress';  
}

annotate SalesOrderService.SalesItems with @(
    UI:{
        LineItem  : [
            {
                $Type : 'UI.DataField',
                Value : itemCategory
            },
            {
                $Type : 'UI.DataField',
                Value : is_Available
            },
            {
                $Type : 'UI.DataField',
                Value : itemCreationDate
            }
        ],
        FieldGroup #BasicData:{
        $Type : 'UI.FieldGroupType',
        Data:[
            {
                $Type : 'UI.DataField',
                Value : itemCategory
            },
            {
                $Type : 'UI.DataField',
                Value : is_Available
            },
            {
                $Type : 'UI.DataField',
                Value : itemCreationDate
            }
        ]

    }, 
    Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Target : '@UI.FieldGroup#BasicData',
            Label : 'Sales Items Info',
            ID : 'headerItemID'
        }
    ]


    }   
){
    ID @UI: {Hidden};
    itemCategory @title: 'Item Category';
    is_Available @title: 'Is Available ?';
    itemCreationDate @title: 'Item Creation Date';

}