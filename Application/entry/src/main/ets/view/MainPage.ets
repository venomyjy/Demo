@Component
export default struct MainPage {
  build(){
    Column() {
      Image($r('app.media.applogo2'))
        .width("50vp")
        .height("50vp")
        .margin({ left: "20vp",bottom:"10vp"})
      Search({})
        .width("100%")
        .height("40vp")
      List(){
        ListItem() {
          Column() {
            Text("#你最喜欢的二次元角色").fontColor('#ff3296af').fontSize(26)
            Text("1收藏/2阅读").fontColor('#d2000000').fontSize(10)
            Text("人活着就是为了樱岛麻衣").fontSize(20)
            Image($r('app.media.ydmy'))
              .width("100%")
              .height("200vp")
          }
          .width("80%")
          .backgroundColor('59000000')
          .margin({ top: "20" })
          .padding(20)
          .alignItems(HorizontalAlign.Start)
          .padding(10)
        }.width("100%").padding({bottom:"20vp"})
        ListItem() {
          Column() {
            Text("#你和她和她的恋爱").fontColor('#ff3296af').fontSize(26)
            Text("4收藏/10阅读").fontColor('#d2000000').fontSize(10)
            Text("Galgame神作").fontSize(20)
            Image($r('app.media.nhthtdla'))
              .width("100%")
              .height("200vp")
          }
          .width("80%")
          .backgroundColor('59000000')
          .margin({ top: "20" })
          .padding(20)
          .alignItems(HorizontalAlign.Start)
          .padding(10)
        }.width("100%").padding({bottom:"20vp"})
        ListItem() {
          Column() {
            Text("#冬季大促你买了什么").fontColor('#ff3296af').fontSize(26)
            Text("0收藏/1阅读").fontColor('#d2000000').fontSize(10)
            Text("青夏轨迹yyds").fontSize(20)
            Image($r('app.media.qxgj'))
              .width("100%")
              .height("200vp")
          }
          .width("80%")
          .backgroundColor('59000000')
          .margin({ top: "20" })
          .padding(20)
          .alignItems(HorizontalAlign.Start)
          .padding(10)
        }.width("100%").padding({bottom:"20vp"})
      }.width("100%").alignListItem(ListItemAlign.Center).divider({strokeWidth:2,color:"#ff000000",startMargin:15,endMargin:15})
    }
    .width("100%")
    .height("93%")
    .alignItems(HorizontalAlign.Start)
  }
}