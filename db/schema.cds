namespace gate.entry;

using { cuid, managed } from '@sap/cds/common';

entity PurchaseOrders : cuid, managed {
    poNumber        : String(20);
    vendorName      : String(100);
    ewayBillNumber  : String(50);
    deliveryOrderNo : String(50);

    items : Composition of many PurchaseOrderItems
            on items.parent = $self;
}

entity PurchaseOrderItems : cuid, managed {
    parent          : Association to PurchaseOrders;
    itemNo          : Integer;
    material        : String(50);
    materialDesc    : String(255);
    orderQty        : Decimal(13,3);
    qty             : Decimal(13,3);
    uom             : String(10);
    rate            : Decimal(13,2);
}

entity GateEntries : cuid, managed {
    purchaseOrder       : Association to PurchaseOrders;
    vendorName          : String(100);
    ewayBillNumber      : String(50);
    deliveryOrderNo     : String(50);
    vehicleNumber       : String(20);

    items : Composition of many GateEntryItems
            on items.parent = $self;
}

entity GateEntryItems : cuid, managed {
    parent          : Association to GateEntries;
    itemNo          : Integer;
    material        : String(50);
    materialDesc    : String(255);
    qty             : Decimal(13,3);
    uom             : String(10);
}