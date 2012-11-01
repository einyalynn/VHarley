var dlr = dlr || {};
dlr.admin = dlr.admin || {};
dlr.admin.photos = {};

$(function() {
    ko.applyBindings(new dlr.admin.photos.PhotosViewModel());
});

dlr.admin.photos.PhotosViewModel = function(){
    var self = this;
    self.photos = ko.observableArray([]);
    self.getPhotos = function(){
      var update = [];
        dlr.utils.ajaxHelper("get","/admin/photos_api", undefined,function(data){
            for(var x = 0; x < data.length; x++){
                update.push(new dlr.admin.photos.Photo()
                    .id(data[x].id)
                    .title(data[x].title)
                    .url(data[x].url)
                    .visible(data[x].visible)
                    .section(data[x].portfolio)
                    .sequence(data[x].sequence)
                    .horizontal(data[x].horizontal)
                );
            }
            self.photos(update);
        } )
    };
    self.getPhotos();
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
    self.setEdit = function(){
      self.editMode(!self.editMode());
    };
    self.save = function(){
        dlr.utils.ajaxHelper("get","/admin/photos_api/update", self, function(data){
            for(var x = 0; x < data.length; x++){
                update.push(new Photo()
                    .title(data[x].title)
                    .url(data[x].url)
                    .visible(data[x].visible)
                    .section(data[x].portfolio)
                    .sequence(data[x].sequence)
                    .horizontal(data[x].horizontal)
                );
            }
            self.photos(update);
        } )
    }
};