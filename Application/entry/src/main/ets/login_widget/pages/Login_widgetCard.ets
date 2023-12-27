@Entry
@Component
struct Login_widgetCard {
  /*
   * The title.
   */
  readonly TITLE: string = 'Hello World';
  /*
   * The action type.
   */
  readonly ACTION_TYPE: string = 'router';
  /*
   * The ability name.
   */
  readonly ABILITY_NAME: string = 'EntryAbility';
  /*
   * The message.
   */
  readonly MESSAGE: string = 'add detail';
  /*
   * The width percentage setting.
   */
  readonly FULL_WIDTH_PERCENT: string = '100%';
  /*
   * The height percentage setting.
   */
  readonly FULL_HEIGHT_PERCENT: string = '100%';

  build() {
    Row() {
      Column() {
        Stack({ alignContent: Alignment.Start }) {
          Text("GalTalk")
            .width("100%")
            .height("40vp")
            .position({ x: "0px", y: "0px" })
            .fontColor("#ff00ffb7")
            .textAlign(TextAlign.Center)
            .fontSize("25fp")
            .fontStyle(FontStyle.Normal)
            .fontWeight(FontWeight.Bold)
        }
        .backgroundImage($r('app.media.bg4'))
        .backgroundImageSize(ImageSize.Cover)
        .backgroundImagePosition(Alignment.Center)
        .width("150vp")
        .height("150vp")
      }
      .width(this.FULL_WIDTH_PERCENT)
    }
    .height(this.FULL_HEIGHT_PERCENT)
    .onClick(() => {
      postCardAction(this, {
        action: this.ACTION_TYPE,
        abilityName: this.ABILITY_NAME,
        params: {
          message: this.MESSAGE
        }
      });
    })
  }
}