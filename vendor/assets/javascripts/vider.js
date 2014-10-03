$(function(){
  $('#vider-element').each(function( {
    var $videBg = $(this).attr('data-vide-bg');
    // TODO: var $volume = $(this).attr('data-v
    $(this).vide(videBg);
  }));
}
