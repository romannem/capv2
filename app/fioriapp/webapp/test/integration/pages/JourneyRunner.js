sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"com/fioriapp/test/integration/pages/SalesOrderList.gen",
	"com/fioriapp/test/integration/pages/SalesOrderObjectPage.gen"
], function (JourneyRunner, SalesOrderListGenerated, SalesOrderObjectPageGenerated) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('com/fioriapp') + '/test/flp.html#app-preview',
        pages: {
			onTheSalesOrderListGenerated: SalesOrderListGenerated,
			onTheSalesOrderObjectPageGenerated: SalesOrderObjectPageGenerated
        },
        async: true
    });

    return runner;
});

