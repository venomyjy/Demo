import Prompt from '@system.prompt'
import prompt from '@ohos.prompt'
import router from '@ohos.router'

@Entry
@Component
struct Loginpage{
  @State message: string = 'Hello World'
  @State user : string = ''
  @State password : string = ''

  build() {
    Column() {
      Column() {
        Text("登录")
          .width("200vp")
          .height("60vp")
          .offset({ x: "0vp", y: "20.44vp" })
          .fontColor(Color.Black)
          .textAlign(TextAlign.Center)
          .fontSize("24fp")
        TextInput({ placeholder: "请输入用户名" })
          .width("95%")
          .height("60vp")
          .offset({ x: "0vp", y: "47.67vp" })
          .onChange((value:string)=>{
            this.user = value;
          })
        TextInput({ placeholder: "请输入密码" })
          .width("95%")
          .height("60vp")
          .offset({ x: "0vp", y: "68.67vp" })
          .type(InputType.Password)
          .onChange((value:string)=>{
            this.password = value;
          })
        Row() {
          Text("使用手机验证码登录")
            .width("45%")
            .height("60vp")
            .fontColor(Color.Black)
            .textAlign(TextAlign.Center)
          Text("忘记密码")
            .width("45%")
            .height("60vp")
            .fontColor(Color.Black)
            .textAlign(TextAlign.Center)
        }        
        .width("100%")
        .height("60vp")
        .offset({ x: "-0.33vp", y: "83.33vp" })
        .alignItems(VerticalAlign.Center)
        .justifyContent(FlexAlign.SpaceAround)
        Button("登录")
          .width("180vp")
          .height("80vp")
          .offset({ x: "0vp", y: "110vp" })
          .backgroundColor("#5afa73")
          .fontColor(Color.Black)
          .onClick(()=>{
            if(this.user == '' || this.password == ''){
              prompt.showToast({
                message:'用户名和密码不能为空!',
                duration:4000
              })
            }else{
              if(this.user != 'f21011122' || this.password != 'yangjunyi'){
                prompt.showToast({
                  message:'用户名和密码错误!',
                  duration:4000
                })
              }else{
                router.replaceUrl({
                  url:'pages/Home'
                })
              }
            }
          })

        Button("取消\n")
          .width("180vp")
          .height("80vp")
          .offset({ x: "0vp", y: "124.37vp" })
          .backgroundColor("#5afa73")
          .fontColor(Color.Black)
          .type(ButtonType.Capsule)
        Row() {
          Image($r('app.media.huawei'))
            .width("10%")
            .height("100%")
            .objectFit(ImageFit.Contain)
          Image($r('app.media.qq'))
            .width("10%")
            .height("100%")
            .objectFit(ImageFit.Contain)
          Image($r('app.media.wx'))
            .width("10%")
            .height("100%")
            .offset({ x: "0vp", y: "0vp" })
            .objectFit(ImageFit.Contain)
        }        
        .width("360vp")
        .height("80vp")
        .offset({ x: "0vp", y: "290vp" })
        .justifyContent(FlexAlign.SpaceAround)
      }      
      .width("100%")
      .height("100%")
      .backgroundColor("#d200f5")
      .backgroundImageSize(ImageSize.Contain)
      .justifyContent(FlexAlign.Start)
    }    
    .width("100%")
    .height("100%")
  }
}
