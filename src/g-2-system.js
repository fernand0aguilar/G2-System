import {Component, View} from 'angular2/core';

@Component({
  selector: 'g-2-system'
})

@View({
  templateUrl: 'g-2-system.html'
})

export class G2System {

  constructor() {
    console.info('G2System Component Mounted Successfully');
  }

}
