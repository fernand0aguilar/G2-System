import {Component, View} from 'angular2/core';
import {bootstrap} from 'angular2/platform/browser';
import {G2System} from 'g-2-system';

@Component({
  selector: 'main'
})

@View({
  directives: [G2System],
  template: `
    <g-2-system></g-2-system>
  `
})

class Main {

}

bootstrap(Main);
