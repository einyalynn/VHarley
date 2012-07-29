$.widget('dlr.portfolio',{
    options:{

    },
    _currentImages: [],
    _imageList: [],
    _create: function(){
        var images = this.element.find('div.image');
        for(var x = 0; x < images.length; x++){
            this._imageList[x] = images[x];
        }
        images.remove();
        this.next();
    },
    next: function(){
       var newStart;
       var oldImages = this._currentImages, newImages = [];
       if(oldImages.length > 0){
           newStart = oldImages[oldImages.length - 1] + 1;
       }  else{
           newStart = 0;
       }
       if(this._imageList[newStart]){
            newImages.push(newStart)
       } else {
           newStart = 0;
           if(this._imageList[0]){
               newImages.push(0)
           }
       }
       if(this._imageList[newStart + 1]){
           newImages.push(newStart + 1)
       } else {
           if(this._imageList[0]){
               newImages.push(0)
           }
       }

       this._currentImages = newImages;
       var container = this.element.find("div.portfolio-container");
       var availableImages = this._imageList;
       container.hide('slide',{direction: 'left'}, 1000, function(){
           container.empty();
           for(var x=0; x < newImages.length; x++){
             container.append(availableImages[newImages[x]]);
           }
       }).delay(200).show('slide', {direction: 'right'}, 1000);
    },
    previous: function(){
        var newStart;
        var oldImages = this._currentImages, newImages = [];
        var availableImages = this._imageList;
        if(oldImages.length > 0){
            newStart = oldImages[0] - 1;
        }  else{
            newStart = 0;
        }
        if(availableImages[newStart]){
            newImages.push(newStart)
        } else {
            newStart = availableImages.length-1;
            if(availableImages[newStart]){
                newImages.push(newStart)
            }
        }
        if(availableImages[newStart - 1]){
            newImages.push(newStart - 1)
        } else {
            if(availableImages[availableImages.length-1]){
                newImages.push(availableImages.length-1)
            }
        }

        this._currentImages = newImages.reverse();
        var container = this.element.find("div.portfolio-container");
        container.hide('slide',{direction: 'right'}, 1000, function(){
            container.empty();
            for(var x=0; x < newImages.length; x++){
                container.append(availableImages[newImages[x]]);
            }
        }).delay(200).show('slide', {direction: 'left'}, 1000);
    }
})