@Entry
@Component
struct UITabDemo {
  private controller: TabsController = new TabsController()

  build() {

    Column(){
      Column(){
        Tabs({
          barPosition:BarPosition.End,
          controller:this.controller
        }){
          TabContent(){
            Column(){
              Text("首页").width('100%').height('100%').fontSize(23).fontColor(Color.White).textAlign(TextAlign.Center).backgroundColor('#C9DAE7')
            }.width('100%').height('100%')
          }.tabBar("首页")
          TabContent(){
            Column(){
              Text("消息").width('100%').height('100%').fontSize(23).fontColor(Color.White).textAlign(TextAlign.Center).backgroundColor('#C9DAE7')
            }.width('100%').height('100%')
          }.tabBar("消息")
          TabContent(){
            Column(){
              Text("我的").width('100%').height('100%').fontSize(23).fontColor(Color.White).textAlign(TextAlign.Center).backgroundColor('#C9DAE7')
            }.width('100%').height('100%')
          }.tabBar("我的")
        }.vertical(false)
      }.height('70%')



    }


  }
}