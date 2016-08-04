'use strict';
app.service('NavbarService', function ($resource) {
    this.getNavBarItems = function () {
        return [
            { Id: 1, Icon: 'fa fa-home', Name: 'Dashboard' },
            { Id: 2, Icon: 'fa fa-briefcase', Name: 'Dashboard 2' },
            { Id: 3, Icon: 'fa fa-cogs', Name: 'Layouts' },
            { Id: 4, Icon: 'fa fa-gift', Name: 'Frontend Theme' },
            { Id: 5, Icon: 'fa fa-bar-chart-o', Name: 'Visual Charts' }
        ];
    };
});