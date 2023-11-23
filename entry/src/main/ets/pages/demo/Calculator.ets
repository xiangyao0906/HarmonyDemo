@Entry
@Component
struct Calculator {
  @State count: number = 0

  build() {
    Stack({alignContent: Alignment.BottomEnd}) { // 堆叠式布局
      Text(this.count.toString())                // 显示文本
        .fontSize(50)                           // 外边距
        .textAlign(TextAlign.Center)
        .size({width: '100%', height: '100%'})   // 控件大小

      Button('+')                                // 显示一个+按钮
        .size({width: 80, height: 80})           // 按钮大小
        .fontSize(50)                            // 按钮文字大小
        .onClick(() => {                         // 按钮点击事件
          this.count++;                          // count累加，触发build()方法回调
        })
        .margin(50)
    }
    .width('100%')
    .height('100%')
  }
}