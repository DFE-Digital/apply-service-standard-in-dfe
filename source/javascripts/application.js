/*jshint esversion: 6 */

//= require govuk_tech_docs


var cards = document.querySelectorAll('.card');
Array.prototype.forEach.call(cards, function (card) {
    var down = void 0,
        up = void 0,
        link = card.querySelector('h2 a');
    card.style.cursor = 'pointer';
    card.onmousedown = function () {
        return down = +new Date();
    };
    card.onmouseup = function () {
        up = +new Date();
        if (up - down < 200) {
            link.click();
        }
    };
});

(function ($, Modules) {
    'use strict'
    Modules.AnchoredHeadings = function () {
      this.start = function ($element) {
        var headings = $element.find('h1, h2, h3, h4, h5, h6')
        headings.each(injectAnchor)
      }
  
      function injectAnchor () {
        var $this = $(this)
    
        if ($this.attr('id')) {        
          $this.addClass('anchored-heading')
          $this.prepend(
            '<a href="#' + $this.attr('id') + '" class="anchored-heading__icon" aria-hidden="true" tabindex="-1"></a>'
          )
        }
      }
    }
  })(jQuery, window.GOVUK.Modules)