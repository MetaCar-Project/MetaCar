
console.log("User Module");

var userModifyService = (function(){
 
        function modify (param, header, token, callback){
            console.log("phone modify");
 
            $.ajax({
                type : 'post',
                url : '/metaCar/modifyprofile',
                beforeSend : function(xhr){
                	xhr.setRequestHeader(header,token);		
                },
                data : JSON.stringify(param),
                contentType : "application/json; charset=utf-8",
                success : function(result, status, xhr){
                    if(callback){
                        callback(result);
                    }
                }
            });
        }
    return {modify:modify}
})();