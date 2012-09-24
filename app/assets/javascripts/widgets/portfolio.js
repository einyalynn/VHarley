$.widget('dlr.portfolio',{
    options:{
        width: 690,
        marginLeftOffset: 25
    },
    _currentPage: null,
    _pageCount: 0,
    _create: function(){
        this._pageCount = this.element.find('li.image').length;
        this.element.find('.portfolio-container ul').css('width', this._pageCount * this.options.width + this.options.marginLeftOffset);
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
    },
    previous: function(){

        this._incrementCurrentPage(-1);
        this._showCurrentPage();
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
        var margin = -1 * index * this.options.width;
        //need to animate the shift of the margin of the ul
        this.element.find('.portfolio-container ul').css('margin-left', margin);
    },
    _bindEvents: function(){
        var widgetContext= this;
        this.element.find('.portfolio-left').click($.proxy(this.previous, widgetContext));
        this.element.find('.portfolio-right').click($.proxy(this.next, widgetContext));
    }
});