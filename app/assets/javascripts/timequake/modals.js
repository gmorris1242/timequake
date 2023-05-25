$(document).ready(function() {
  $('.modal-open').click(function(e) {
    e.preventDefault();
    let model = $(this).data('modal');
    let thisModal = $('.modal.' + model)

    thisModal.addClass('active');
    $('html, body').css('overflow', 'hidden');
  })

  $('.modal .modal-content').click(e => e.stopPropagation());

  $('.modal, .modal-close').click(function() {
    $('.modal').removeClass('active');
    $('html, body').css('overflow', 'scroll');
  })
})
