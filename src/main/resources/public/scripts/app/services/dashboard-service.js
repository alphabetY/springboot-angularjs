'use strict';
app.service('DashboardService', function ($resource) {
    this.getDashboardItems = function () {
        return [
            { Id: 1, Icon: 'fa fa-comments', Style: 'dashboard-stat blue', Value: '555', Desc: 'My Feedbacks' },
            { Id: 2, Icon: 'fa fa-shopping-cart', Style: 'dashboard-stat green', Value: '777', Desc: 'My Orders' },
            { Id: 3, Icon: 'fa fa-globe', Style: 'dashboard-stat purple', Value: '85%', Desc: 'Brand Popularity' },
            { Id: 4, Icon: 'fa fa-bar-chart-o', Style: 'dashboard-stat yellow', Value: '15,5M$', Desc: 'Total Profit' }
        ];
    };
});