

window.onload = function() {

  $( ".button_report" ).click(function() {

    setTimeout( function(){
        history.back(1);
    }  , 2000 );

    setTimeout( function(){
        location.reload();
    }  , 2500 );

  });

}
