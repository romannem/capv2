using { my.captraining as myCapSrv} from '../db/schema';

service SalesOrderService {
    @odata.draft.enabled    
    entity SalesOrder as projection on myCapSrv.SalesOrder;
    entity SalesItems as projection on myCapSrv.SalesItems;
}
