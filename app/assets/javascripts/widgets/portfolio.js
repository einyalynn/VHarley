$.widget('dlr.portfolio',{
    options:{

    },
    _currentPage: null,
    _pageCount: 0,
    _pageList: [],
    _create: function(){
        var images = this.element.find('div.image');
        var index = 0;
        this._bindEvents();
        var widgetContext = this;
        while (index < images.length){
            this._pageCount++;
            var pageClass = 'page_' + this._pageCount;
            var pagerElement = $('<div class=' + pageClass + '>' + this._pageCount + '</div>').click(
                function(){
                    widgetContext._setCurrentPage(parseInt($(this).text()));
                    widgetContext._showCurrentPage();
                });
            this.element.find('.portfolio-pager').append(pagerElement);
            var pageDiv = $('<div class="portfolio-page"></div>');
            //horizontal indicator is needed as can't get height and width if the images haven't fully loaded
            //and I must assume that the images aren't fully loaded yet!
            var horizontal = $(images[index]).hasClass('image-horizontal');
            pageDiv.append(images[index]);
            if(!horizontal){
                index++;
                if(index < images.length && !$(images[index]).hasClass('image-horizontal')){
                    $(images[index]).addClass('image-right');
                    pageDiv.append(images[index]);
                } else
                {
                    index--;
                }
            }
            this._pageList[this._pageCount] = pageDiv;
            index++;
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

        var container = this.element.find("div.portfolio-container");
        container.empty();
        container.append(this._pageList[this._currentPage]);
    },
    _bindEvents: function(){
        var widgetContext= this;
        this.element.find('.portfolio-left').click($.proxy(this.previous, widgetContext));
        this.element.find('.portfolio-right').click($.proxy(this.next, widgetContext));
    }
});