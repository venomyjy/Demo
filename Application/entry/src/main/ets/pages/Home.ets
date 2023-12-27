class Item{
  name :String
  image:ResourceStr
  infor:String

  constructor(name:string,image:ResourceStr,infor:string) {
    this.name=name;
    this.image=image;
    this.infor=infor;
  }
}

import web_webview from '@ohos.web.webview';
import Classification from '../view/Classification';
import MainPage from '../view/MainPage';
import Setting from '../view/Setting'
import Star from '../view/Star';

@Entry
@Component
struct Home {
  @State message: string = 'Hello World'

  webviewController:web_webview.WebviewController = new web_webview.WebviewController();

  private  items:Array<Item>=[
    new Item ('flowers春',$r("app.media.flowerspring"),'￥40'),
    new Item ('flowers夏',$r('app.media.flowersummer'),'￥40'),
    new Item ('flowers秋',$r('app.media.flowerautumn'),'￥40'),
    //new Item ('flowers冬',$r('app.media.flowerwinter'),'￥40'),
  ]

  build() {
    Column() {
      Tabs({ barPosition: BarPosition.End }) {
        TabContent(){
          MainPage();
        }.tabBar({ icon: $r('app.media.home'), text: "首页" })
        TabContent(){
          Classification();
        }.tabBar({ icon: $r('app.media.comment'), text: "专区" })
        TabContent() {
          Star()
        }.tabBar({ icon: $r('app.media.rating'), text: "评分" })
        TabContent(){
          Setting ();
        }.tabBar({ icon: $r('app.media.personIn'), text: "我的" })
      }
      .width("100%")
      .height("100%")
    }
    .width("100%")
    .height("100%")
  }
}
