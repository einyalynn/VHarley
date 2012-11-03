var dlr = dlr || {};
dlr.admin = dlr.admin || {};
dlr.admin.photos = {};

$(function() {
    ko.applyBindings(new dlr.admin.photos.PhotosViewModel());
});

dlr.admin.photos.PhotosViewModel = function(){
    var self = this;
    self.photos = ko.observableArray([]);
    self.portfolios = ["food","interiors","published"];
    self.checks = [{text:"no", value:"false"},{text:"yes", value:"true"}];

    self.getPhotos = function(){
      var update = [];
        dlr.utils.ajaxHelper("get","/admin/photos_api", undefined,function(data){
            for(var x = 0; x < data.length; x++){
                update.push(new dlr.admin.photos.Photo()
                    .id(data[x].id)
                    .title(data[x].title)
                    .url(data[x].url)
                    .visible(data[x].visible ? data[x].visible.toString() : "false")
                    .section(data[x].portfolio)
                    .sequence(data[x].sequence)
                    .horizontal(data[x].horizontal ? data[x].horizontal.toString() : "false")
                );
            }
            self.photos(update);
        } )
    };
    self.getPhotos();
};
dlr.admin.photos.SavePhoto = function(){
    var self = this;
    self.id = ko.observable();
    self.title = ko.observable();
    self.url = ko.observable();
    self.visible = ko.observable();
    self.section = ko.observable();
    self.sequence = ko.observable();
    self.horizontal = ko.observable();
};
dlr.admin.photos.Photo = function(){
    var self = this;
    self.id = ko.observable();
    self.title = ko.observable();
    self.url = ko.observable();
    self.visible = ko.observable();
    self.section = ko.observable();
    self.sequence = ko.observable();
    self.horizontal = ko.observable();
    self.editMode = ko.observable(false);
    self.isSaving = ko.observable(false);
    self.savePhoto = ko.observable(new dlr.admin.photos.SavePhoto());
    self.setEdit = function(){
        self.savePhoto().id(self.id());
        self.savePhoto().title(self.title());
        self.savePhoto().url(self.url());
        self.savePhoto().visible(self.visible());
        self.savePhoto().section(self.section());
        self.savePhoto().sequence(self.sequence());
        self.savePhoto().horizontal(self.horizontal());
      self.editMode(!self.editMode());
    };
    self.save = function(){
        self.isSaving(true);
        dlr.utils.ajaxHelper("put","/admin/photos_api/" + self.id(), self.savePhoto(), function(data){
            if(data){
                self.title(self.savePhoto().title());
                self.url(self.savePhoto().url());
                self.visible(self.savePhoto().visible());
                self.section(self.savePhoto().section());
                self.sequence(self.savePhoto().sequence());
                self.horizontal(self.savePhoto().horizontal());
            }
            }, null, function(){

                self.editMode(false);
                self.isSaving(false);
            } );
    }
};