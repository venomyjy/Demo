import web_webview from '@ohos.web.webview';
@Component
export default struct Classification{

  webviewController: web_webview.WebviewController = new web_webview.WebviewController();

  build(){
    Row(){
      Image($r('app.media.applogo2'))
        .objectFit(ImageFit.Cover)
        .width("50vp")
        .height("50vp")
        .offset({x:"6%",y:"-43%"})
      Tabs(){
        TabContent(){
          List(){
            ListItem(){
              Column() {
                Column() {
              Text("热门话题").fontColor('#ff3296af')
                .fontSize(30)
              Text("# 你最喜欢的二次元角色")
                .fontSize(16)
                .margin({ top: 10 })
              Text("# 你和她和她的恋爱")
                .fontSize(16)
                .margin({ top: 10 })
              Text("# 冬季大促你买了什么")
                .fontSize(16)
                .margin({ top: 10 })
            }.width("100%")
                .border({ width: "5vp", color: "#80000000", radius: "10vp" })
                .alignItems(HorizontalAlign.Start)
                .padding(10)
                .offset({x:0,y:0})
                .backgroundColor(0xAFEEEE)
              }
            }
            ListItem() {
              Column() {
                Text("#你最喜欢的二次元角色").fontColor('#ff3296af').fontSize(26)
                Text("1收藏/2阅读").fontColor('#d2000000').fontSize(10)
                Text("人活着就是为了樱岛麻衣").fontSize(20)
                Image($r('app.media.ydmy'))
                  .width("100%")
                  .height("200vp")
              }
              .width("100%")
              .margin({ top: "20" })
              .border({ width: "5vp", color: "#80000000", radius: "10vp" })
              .alignItems(HorizontalAlign.Start)
              .padding(10)
            }
            ListItem() {
              Column() {
                Text("#你和她和她的恋爱").fontColor('#ff3296af').fontSize(26)
                Text("4收藏/10阅读").fontColor('#d2000000').fontSize(10)
                Text("Galgame神作").fontSize(20)
                Image($r('app.media.nhthtdla'))
                  .width("100%")
                  .height("200vp")
              }
              .width("100%")
              .margin({ top: "20" })
              .border({ width: "5vp", color: "#80000000", radius: "10vp" })
              .alignItems(HorizontalAlign.Start)
              .padding(10)
            }
            ListItem() {
              Column() {
                Text("#冬季大促你买了什么").fontColor('#ff3296af').fontSize(26)
                Text("0收藏/1阅读").fontColor('#d2000000').fontSize(10)
                Text("青夏轨迹yyds").fontSize(20)
                Image($r('app.media.qxgj'))
                  .width("100%")
                  .height("200vp")
              }
              .width("100%")
              .margin({ top: "20" })
              .border({ width: "5vp", color: "#80000000", radius: "10vp" })
              .alignItems(HorizontalAlign.Start)
              .padding(10)
            }
          }.width("100%").height("100%")

          }
        .tabBar({text:"话题"}).height("90%")
        TabContent(){
          Column(){
            Tabs(){
              TabContent(){
                Column({space:2}){
                  Grid(){
                    GridItem(){
                      Column() {
                        Web({ src: 'https://store.steampowered.com/app/2185770/_/', controller: this.webviewController})
                        Image($r('app.media.qxgj')).width("100%").height("60%").objectFit(ImageFit.Cover)
                        Text("青夏轨迹").padding({top:10})
                      }.width("100%").height("100%").backgroundColor(0xFAEEE0)
                    }.rowStart(0).rowEnd(0).columnStart(0).columnEnd(0)
                    GridItem(){
                      Column() {
                        Web({ src: 'https://store.steampowered.com/app/430960/_/', controller: this.webviewController})
                        Image($r('app.media.lucy')).width("100%").height("60%").objectFit(ImageFit.Cover)
                        Text("lucy").padding({top:10})
                      }.width("100%").height("100%").backgroundColor(0xFAEEE0)
                    }.rowStart(0).rowEnd(0).columnStart(1).columnEnd(1)
                  }.columnsTemplate('1fr 1fr')
                  .rowsTemplate('1fr 1fr 1fr 1fr 1fr')
                  .columnsGap(10)
                  .rowsGap(10)

                }
              }.tabBar({ text: "纯爱" })
              TabContent(){
                Column({space:2}){
                  Grid(){
                    GridItem(){
                      Column() {
                        Web({ src: 'https://store.steampowered.com/app/2185770/_/', controller: this.webviewController})
                        Image($r('app.media.qxgj')).width("100%").height("60%").objectFit(ImageFit.Cover)
                        Text("青夏轨迹").padding({top:10})
                      }.width("100%").height("100%").backgroundColor(0xFAEEE0)
                    }.rowStart(0).rowEnd(0).columnStart(0).columnEnd(0)
                  }.columnsTemplate('1fr 1fr')
                  .rowsTemplate('1fr 1fr 1fr 1fr 1fr')
                  .columnsGap(10)
                  .rowsGap(10)

                }
              }.tabBar({ text: "后宫" })
              TabContent(){
                Column({space:2}){
                  Grid(){
                    GridItem(){
                      Column() {
                        Web({ src: 'https://store.steampowered.com/app/452440/Flowers_Le_volume_sur_printemps/', controller: this.webviewController})
                        Image($r('app.media.fs')).width("100%").height("60%").objectFit(ImageFit.Cover)
                        Text("floweSpring").padding({top:10})
                      }.width("100%").height("100%").backgroundColor(0xFAEEE0)
                    }.rowStart(0).rowEnd(0).columnStart(0).columnEnd(0)
                    GridItem(){
                      Column() {
                        Web({ src: 'https://store.steampowered.com/app/1575980/_/', controller: this.webviewController})
                        Image($r('app.media.usonatsu')).width("100%").height("60%").objectFit(ImageFit.Cover)
                        Text("始于谎言的夏日恋情").padding({top:10})
                      }.width("100%").height("100%").backgroundColor(0xFAEEE0)
                    }.rowStart(0).rowEnd(0).columnStart(1).columnEnd(1)
                    GridItem(){
                      Column() {
                        Web({ src: 'https://store.steampowered.com/app/1637370/_/', controller: this.webviewController})
                        Image($r('app.media.msljs')).width("100%").height("60%").objectFit(ImageFit.Cover)
                        Text("梅时露霁书").padding({top:10})
                      }.width("100%").height("100%").backgroundColor(0xFAEEE0)
                    }.rowStart(1).rowEnd(1).columnStart(2).columnEnd(2)
                  }.columnsTemplate('1fr 1fr')
                  .rowsTemplate('1fr 1fr 1fr 1fr 1fr')
                  .columnsGap(10)
                  .rowsGap(10)

                }
              }.tabBar({ text: "百合" })
            }.vertical(true)
            .scrollable(false)
            .barMode(BarMode.Fixed)
            .barHeight("33%")
          }
        }.tabBar({text:"分类"})
      }.barHeight("100vp")
      .width("78%")
      .height("100%")
      .margin({left:"20vp"})
    }
    .alignItems(VerticalAlign.Center)
    .justifyContent(FlexAlign.Start)
    .width("100%")
  }
}