$.widget('dlr.portfolio',{
    options:{

    },
    _currentPage: null,
    _pageCount: 0,
    _create: function(){
        this._pageCount = this.element.find('li.image').length;
        var index = 0;
        this._bindEvents();
        var widgetContext = this;
        for(var i = 1; i <= this._pageCount; i++){
            var pageClass = 'page_' + i.toString();
            var pagerElement = $('<div class=' + pageClass + '>' + i.toString() + '</div>').click(
                function(){
                    widgetContext._setCurrentPage(parseInt($(this).text()));
                    widgetContext._showCurrentPage();
                });
            this.element.find('.portfolio-pager').append(pagerElement);
        }
        if(this._pageCount > 0){
            this._currentPage = 1;
            this._showCurrentPage();
        }

    },
    next: function(){
        this._incrementCurrentPage(1);
        this._showCurrentPage();

//       this._currentImages = newImages;
//       var container = this.element.find("div.portfolio-container");
//       var availableImages = this._imageList;
//       container.hide('slide',{direction: 'left'}, 1000, function(){
//           container.empty();
//           for(var x=0; x < newImages.length; x++){
//             container.append(availableImages[newImages[x]]);
//           }
//       }).delay(200).show('slide', {direction: 'right'}, 1000);
    },
    previous: function(){

        this._incrementCurrentPage(-1);
        this._showCurrentPage();

//        this._currentImages = newImages.reverse();
//        var container = this.element.find("div.portfolio-container");
//        container.hide('slide',{direction: 'right'}, 1000, function(){
//            container.empty();
//            for(var x=0; x < newImages.length; x++){
//                container.append(availableImages[newImages[x]]);
//            }
//        }).delay(200).show('slide', {direction: 'left'}, 1000);
    },
    goToPage: function(pageNumber){
        this._setCurrentPage(pageNumber);
        this._showCurrentPage();
    },
    _incrementCurrentPage:function(increment){
        var trialNewPage = this._currentPage + increment;
        this._setCurrentPage(trialNewPage);
    },
    _setCurrentPage: function(trialNewPage){
        if(trialNewPage < 1){
            this._currentPage = this._pageCount;
        }  else if (trialNewPage > this._pageCount) {
            this._currentPage = 1;
        } else {
            this._currentPage = trialNewPage;
        }
    },
    _showCurrentPage: function(){
        var index =  this._currentPage - 1;
        this.element.find('li.image:eq(' + index.toString() +')').show();
        this.element.find('li.image:lt(' + index.toString() +'), li.image:gt(' + index.toString() +')').hide();
    },
    _bindEvents: function(){
        var widgetContext= this;
        this.element.find('.portfolio-left').click($.proxy(this.previous, widgetContext));
        this.element.find('.portfolio-right').click($.proxy(this.next, widgetContext));
    }
});