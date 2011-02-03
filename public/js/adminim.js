
function move_menu_button(){
    var width = 0;
    $("#menu_buttons label").each( function(){ width += $(this).width(); } );
    $('.head').offset({left : parseInt(($(window).width() - width) / 2, 10), top : 0 });
}

