new TypeIt('#replaceStrings', {
  strings: ["Bring us your prototype", "Improvise it at our lab","We will fund it",
  "We will help you to patent it","Market it","Be a successful Innovator"],
  speed: 100,
  breakLines: false,
  waitUntilVisible: true
}).go();

$('#main-slider .carousel-content').flexVerticalCenter({ cssAttribute: 'padding-top' });
