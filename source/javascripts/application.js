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
