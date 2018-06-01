import { BrowserModule } from '@angular/platform-browser';
import { ErrorHandler, NgModule } from '@angular/core';
import { IonicApp, IonicErrorHandler, IonicModule } from 'ionic-angular';
import { SplashScreen } from '@ionic-native/splash-screen';
import { StatusBar } from '@ionic-native/status-bar';
import { ListPage } from '../pages/list/list.component';
import { AddPage } from '../pages/add/add.component';

import { MyApp } from './app.component';
import { HomePage } from '../pages/home/home';
import { CommonService } from '../pages/service/common.service';

@NgModule({
  declarations: [
    MyApp,
    HomePage,
    ListPage,
    AddPage
  ],
  imports: [
    BrowserModule,
    IonicModule.forRoot(MyApp)
  ],
  bootstrap: [IonicApp],
  entryComponents: [
    MyApp,
    HomePage,
    ListPage,
    AddPage
  ],
  providers: [
    StatusBar,
    SplashScreen,
    CommonService,
    {provide: ErrorHandler, useClass: IonicErrorHandler}
  ]
})
export class AppModule {}
