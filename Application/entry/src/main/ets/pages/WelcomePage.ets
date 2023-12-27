import router from '@ohos.router'

@Entry
@Component
struct WelcomePage {
  @State message: string = 'Hello World'
  aboutToAppear(){
    setTimeout(function(){
      router.replaceUrl({
        url:'pages/Loginpage'
      })
    },8000)
  }

  build() {
    Column() {
      Column() {
        Swiper() {
          Stack({alignContent:Alignment.Top}){
            Image($r('app.media.bg1'))
              .width("100%")
              .height("100%")
            Text("始于谎言的夏日恋情")
              .fontSize(25)
              .padding(50)
          }
          Stack({alignContent:Alignment.Top}){
            Image($r('app.media.bg2'))
              .width("100%")
              .height("100%")
            Text("始于谎言的夏日恋情")
              .fontSize(25)
              .padding(50)
          }
          Stack({alignContent:Alignment.Top}){
            Image($r('app.media.bg3'))
              .width("100%")
              .height("100%")
            Text("始于谎言的夏日恋情")
              .fontSize(25)
              .padding(50)
          }
        }
        .width("100%")
        .height("100%")
        .offset({ x: "0vp", y: "0vp" })
        .autoPlay(true)
        .vertical(false)
        .cachedCount(1)
      }
      .width("100%")
      .height("100%")
      .justifyContent(FlexAlign.Center)

    }
    .width("100%")
    .height("100%")
  }
}
