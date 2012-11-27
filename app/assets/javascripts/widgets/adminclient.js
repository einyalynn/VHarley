var dlr = dlr || {};
dlr.admin = dlr.admin || {};
dlr.admin.clients = {};

$(function() {
    ko.applyBindings(new dlr.admin.clients.ClientsViewModel());
});

dlr.admin.clients.ClientsViewModel = function(){
    var self = this;
    self.clients = ko.observableArray([]);
    self.isLoading = ko.observable(false);
    self.getClients = function(){
      self.isLoading(true);
      var update = [];
        dlr.utils.ajaxHelper("get","/admin/clients_api", undefined,function(data){
            for(var x = 0; x < data.length; x++){
                update.push(new dlr.admin.clients.Client()
                    .id(data[x].id)
                    .name(data[x].name)
                    .url(data[x].url)
                    .sequence(data[x].sequence)
                );
            }
            self.clients(update);
        }, null, function(){
            self.isLoading(false);
        } )
    };
    self.getClients();
};
dlr.admin.clients.SaveClient = function(){
    var self = this;
    self.id = ko.observable();
    self.name = ko.observable();
    self.url = ko.observable();
    self.sequence = ko.observable();
};
dlr.admin.clients.Client = function(){
    var self = this;
    self.id = ko.observable();
    self.name = ko.observable();
    self.url = ko.observable();
    self.sequence = ko.observable();
    self.editMode = ko.observable(false);
    self.isSaving = ko.observable(false);
    self.saveClient = ko.observable(new dlr.admin.clients.SaveClient());
    self.setEdit = function(){
        self.saveClient().id(self.id());
        self.saveClient().name(self.name());
        self.saveClient().url(self.url());
        self.saveClient().sequence(self.sequence());
      self.editMode(!self.editMode());
    };
    self.save = function(){
        self.isSaving(true);
        dlr.utils.ajaxHelper("put","/admin/clients_api/" + self.id(), self.saveClient(), function(data){
            if(data){
                self.name(self.saveClient().name());
                self.url(self.saveClient().url());
                self.sequence(self.saveClient().sequence());
            }
            }, null, function(){

                self.editMode(false);
                self.isSaving(false);
            } );
    }
};