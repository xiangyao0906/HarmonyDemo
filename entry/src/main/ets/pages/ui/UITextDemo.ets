@Entry
@Component
struct UITextDemo {
  build() {

    Column(){
      Column() {
        Text('默认文本').margin({ top: 70 }).width('100%').textAlign(TextAlign.Center)
        Text('加粗文本').margin({ top: 10 }).fontWeight(FontWeight.Bold).width('100%').textAlign(TextAlign.Center)
        Text('文本控件').margin({ top: 10 }).fontSize(20).fontColor(Color.Orange).backgroundColor(Color.Transparent).width('100%').textAlign(TextAlign.Center)
        Text('文本控件').margin({ top: 10 }).fontSize(30).fontStyle(FontStyle.Italic).fontColor(Color.Orange).backgroundColor(Color.Transparent).width('100%').textAlign(TextAlign.Center)
        Text('单行文本单行文本单行文本单行文本单行文本单行文本').maxLines(1).textOverflow({overflow:TextOverflow.Ellipsis}).margin({ top: 10 }).fontSize(20).fontStyle(FontStyle.Italic).fontColor(Color.Orange).backgroundColor(Color.Transparent).width('90%').textAlign(TextAlign.Center)
        Text('下划线').maxLines(1).textOverflow({overflow:TextOverflow.Ellipsis}).decoration({type:TextDecorationType.Underline}).margin({ top: 10 }).fontSize(20).fontStyle(FontStyle.Italic).fontColor(Color.Orange).backgroundColor(Color.Transparent).width('90%').textAlign(TextAlign.Center)
        Text('删除线').maxLines(1).textOverflow({overflow:TextOverflow.Ellipsis}).decoration({type:TextDecorationType.LineThrough}).margin({ top: 10 }).fontSize(20).fontStyle(FontStyle.Italic).fontColor(Color.Orange).backgroundColor(Color.Transparent).width('90%').textAlign(TextAlign.Center)
        Text('上划线').maxLines(1).textOverflow({overflow:TextOverflow.Ellipsis}).decoration({type:TextDecorationType.Overline}).margin({ top: 10 }).fontSize(20).fontStyle(FontStyle.Italic).fontColor(Color.Orange).backgroundColor(Color.Transparent).width('90%').textAlign(TextAlign.Center)

        Text('默认文本').margin({ top: 70 }).width('50%').backgroundColor(Color.Red)
        Text('默认文本').width('70%').backgroundColor(Color.Yellow)
        Text('默认文本').width('90%').backgroundColor(Color.Green)

      }.backgroundColor(Color.Gray).alignItems(HorizontalAlign.Start)


    }
  }
}
