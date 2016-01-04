$(function(){
    var countMax = 30;
    $('#textarea').bind('keydown keyup keypress change',function(){
        var thisValueLength = $(this).val().length;
        var countDown = (countMax)-(thisValueLength);
 
        if(countDown < 0){
            $('.count').html('制限数をオーバーしています');
            $('.count').css({color:'#ff0000',fontWeight:'bold'});
        } else {
            $('.count').html(countDown + '文字');
            $('.count').css({color:'#000000',fontWeight:'normal'});
        }
    });
    $(window).load(function(){
        $('.count').html(countMax);
    });
});