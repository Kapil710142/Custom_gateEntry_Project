using { gate.entry as db } from '../db/schema';

service GateEntryService {

    entity PurchaseOrders as projection on db.PurchaseOrders;
    entity PurchaseOrderItems as projection on db.PurchaseOrderItems;

    entity GateEntries as projection on db.GateEntries;
    entity GateEntryItems as projection on db.GateEntryItems;
}