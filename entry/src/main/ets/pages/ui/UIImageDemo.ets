@Entry
@Component
struct UIImageDemo {
  build() {

    Column() {
      Image($r('app.media.logooo')).width(90).height(90)
      Image('').backgroundColor(Color.Orange).width(90).height(90)
        .margin({top:20}).border({radius:45})

      Image('').backgroundColor(Color.Orange).width(90).height(90)
        .margin({top:20}).border({radius:45}).borderColor(Color.Green).borderWidth(4).borderStyle(BorderStyle.Dashed)

      Image($r('app.media.logooo')).width(90).height(90).border({radius:45}).margin({top:10})
      Image($r('app.media.logooo')).width(190).height(190).margin({top:10}).objectFit(ImageFit.Contain)


    }.margin({ top: 20 }).width('100%')


  }
}