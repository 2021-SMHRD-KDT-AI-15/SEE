$('#d-g').on('click', function() {
   $('#modal-box-dg').fadeIn();
   
})
$('#s-g').on('click', function() {
   $('#modal-box-sg').fadeIn();
})
$('#n-g').on('click', function() {
   $('#modal-box-ng').fadeIn();
})
$('#b-g').on('click', function() {
   $('#modal-box-bg').fadeIn();
})
$('#gsg').on('click', function() {
   $('#modal-box-gg').fadeIn();
   
})
$('.btn-close').on('click', function() {
   $('#modal-box-dg').fadeOut();
   $('#modal-box-sg').fadeOut();
   $('#modal-box-ng').fadeOut();
   $('#modal-box-bg').fadeOut();
   $('#modal-box-gg').fadeOut();

})

$('html').on('mouseup', function () {
         $('#modal-box-dg').fadeOut();
         $('#modal-box-sg').fadeOut();
         $('#modal-box-ng').fadeOut();
         $('#modal-box-bg').fadeOut();
         $('#modal-box-gg').fadeOut();
        })