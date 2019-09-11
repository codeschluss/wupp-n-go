import { DOCUMENT } from '@angular/common';
import { Component, Inject, NgModule, OnInit } from '@angular/core';
import { ActivatedRoute, RouterModule } from '@angular/router';
import { FontAwesomeModule } from '@fortawesome/angular-fontawesome';

@Component({
  styles: [`
    @keyframes fade {
      from { opacity: .36; }
      to { opacity: .87; }
    }
    fa-icon {
      animation: fade .5s infinite alternate;
    }
    main {
      align-items: center;
      background-color: rgba(0, 0, 0, .12);
      bottom: 0;
      color: rgba(0, 0, 0, .87);
      display: flex;
      font-size: 4rem;
      justify-content: center;
      left: 0;
      max-width: 100% !important;
      position: absolute;
      right: 0;
      top: 0;
    }
  `],
  template: `
    <main>
      <fa-icon icon="map-marked-alt"></fa-icon>
    </main>
  `
})

export class MapsComponent implements OnInit {

  public constructor(
    @Inject(DOCUMENT) private document: Document,
    private route: ActivatedRoute
  ) { }

  public ngOnInit(): void {
    if (this.route.snapshot.queryParamMap.has('embed')) {
      this.document.body.classList.add('embedded');
    }
  }

}

@NgModule({
  exports: [RouterModule],
  imports: [RouterModule.forChild([
    {
      path: '',
      component: MapsComponent
    }
  ])]
})

export class MapsRouter { }

@NgModule({
  declarations: [
    MapsComponent
  ],
  imports: [
    FontAwesomeModule,
    MapsRouter
  ]
})

export class MapsModule { }
