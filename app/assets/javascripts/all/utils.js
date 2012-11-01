/**
 * Created with JetBrains RubyMine.
 * User: dyana
 * Date: 01/11/12
 * Time: 21:18
 * To change this template use File | Settings | File Templates.
 */
var dlr = dlr || {};
dlr.utils = dlr.utils || {};

dlr.utils.ajaxHelper = function(verb, url, data, success, failure, final){
    $.ajax({
        type: verb,
        url: url,
        data: data,
        dataType: "json",
        success: function(data){
          if(success){
              success(data);
          }
        },
        error: function(er){
          if(failure){
              failure(er);
          }
        },
        complete: function(){
          if(final){
              final();
          }
        }
    });
};