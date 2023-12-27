@Component
export default struct Star{
  @State outSetValueOne: number = 50
  @State outSetValueTwo: number = 50
  @State outSetValueThree: number = 50

  build(){
    Column() {
      Row() {
        Image($r('app.media.applogo2'))
          .width("50vp")
          .height("50vp")
          .offset({ x: "-15%", y: "%" })
        Text("热门游戏").fontSize(40)
      }.width("100%").justifyContent(FlexAlign.Center).alignItems(VerticalAlign.Center)
      List(){
        ListItem() {
          Column() {
            Image($r("app.media.qxgj")).width("80%").height("100vp")
            Text("青夏轨迹").margin({ top: "10vp" })
            Slider({ step: 10, style: SliderStyle.OutSet, value: this.outSetValueOne, })
              .showSteps(true).width("80%")
              .onChange((value: number, mode: SliderChangeMode) => {
                this.outSetValueOne = value
                console.info('value:' + value + 'mode:' + mode.toString())
              })
            Text(this.outSetValueOne.toFixed(0)).fontSize(12)
          }
          .height("33%")
          .width("100%")
          .justifyContent(FlexAlign.Center)
          .backgroundColor(80000000)
          .margin({ bottom: "20vp" })
        }
        ListItem() {
          Column() {
            Image($r("app.media.msljs")).width("80%").height("100vp")
            Text("梅时露霁书").margin({ top: "10vp" })
            Slider({ step: 10, style: SliderStyle.OutSet, value: this.outSetValueTwo, })
              .showSteps(true).width("80%")
              .onChange((value: number, mode: SliderChangeMode) => {
                this.outSetValueTwo = value
                console.info('value:' + value + 'mode:' + mode.toString())
              })
            Text(this.outSetValueTwo.toFixed(0)).fontSize(12)
          }
          .height("33%")
          .width("100%")
          .justifyContent(FlexAlign.Center)
          .backgroundColor(80000000)
          .margin({ bottom: "20vp" })
        }
        ListItem() {
          Column() {
            Image($r("app.media.usonatsu")).width("80%").height("100vp")
            Text("始于谎言的夏日恋情").margin({ top: "10vp" })
            Slider({ step: 10, style: SliderStyle.OutSet, value: this.outSetValueThree, })
              .showSteps(true).width("80%")
              .onChange((value: number, mode: SliderChangeMode) => {
                this.outSetValueThree = value
                console.info('value:' + value + 'mode:' + mode.toString())
              })
            Text(this.outSetValueThree.toFixed(0)).fontSize(12)
          }
          .height("33%")
          .width("100%")
          .justifyContent(FlexAlign.Center)
          .backgroundColor(80000000)
          .margin({ bottom: "20vp" })
        }
    }
    }.width("100%")
      .height("93%")
      .alignItems(HorizontalAlign.Start)
  }
}
