var ng = require('@angular/core');

require('./header.scss');

module.exports = ng.Component({
  selector: 'fountain-header',
  template: require('./header.html')
})
.Class({
  constructor: function () {}
});
