//noinspection JSUnusedGlobalSymbols
$.widget('dlr.portfolio',{
    options:{
        width: 690,
        marginLeftOffset: 25
    },
    _currentPage: null,
    _pageCount: 0,
    _create: function(){
        this._pageCount = this.element.find('li.image').length;
        this.element.find('.portfolio-container > ul').css('width', this._pageCount * this.options.width + this.options.marginLeftOffset);
        this._bindEvents();
        var widgetContext = this;
        for(var i = 1; i <= this._pageCount; i++){
            var pageLink = '<a href="#" title="page ' + i.toString() +'">' + i.toString() + '</a>';
            var pagerElement = $(pageLink).click(
                function(){
                    widgetContext.goToPage(parseInt($(this).text()));
                    return false;
                });
            this.element.find('.portfolio-pager').append(pagerElement);
        }
        if(this._pageCount > 0){
            this._currentPage = 1;
            this._showCurrentPage(0);
        }

    },
    next: function(){
        this._incrementCurrentPage(1);
        this._showCurrentPage(1000);
        return false;
    },
    previous: function(){

        this._incrementCurrentPage(-1);
        this._showCurrentPage(1000);
        return false;
    },
    goToPage: function(pageNumber){
        var easingDuration = Math.pow(this._currentPage - pageNumber, 2) === 1 ? 1000 : 2000;
        this._setCurrentPage(pageNumber);
        this._showCurrentPage(easingDuration);
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
    _showCurrentPage: function(duration){
        var index =  this._currentPage - 1;
        var margin = -1 * index * this.options.width;
        this.element.find('.portfolio-container > ul').animate({
            marginLeft: [margin, 'easeInOutCubic']
        }, duration, undefined);
    },
    _bindEvents: function(){
        var widgetContext= this;
        this.element.find('.portfolio-left').click($.proxy(this.previous, widgetContext));
        this.element.find('.portfolio-right').click($.proxy(this.next, widgetContext));
    }
});