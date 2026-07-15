using SalesOrderService as service from '../../srv/cap-srv';
@data.draft.enabled

annotate service.SalesOrder with @(
    UI.SelectionFields : [ salesNumber, customerName, customerCode ],
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Sales Number',
                Value : salesNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Customer Name',
                Value : customerName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Customer Code',
                Value : customerCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Customer Adress',
                Value : customerAdress,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Sales Number',
            Value : salesNumber,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Customer Name',
            Value : customerName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Customer Code',
            Value : customerCode,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Customer Adress',
            Value : customerAdress,
        },
    ],
);

