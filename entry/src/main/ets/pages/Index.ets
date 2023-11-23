import prompt from '@ohos.promptAction'
import router from '@ohos.router'
import {  PAGE_UI_MAIN } from '../common/Constant'

@Entry
@Component
struct Index {
  private indexList: string[] = ['Test', '布局控件', 'Tab']

  build() {
    Column() {
      List() {

        ForEach(this.indexList, (item: string) => {

          ListItem() {
            ListItemBuilder({ item }).margin(10)
          }

        })
      }
    }
  }
}

@Component
struct ListItemBuilder {
  private item: string = '';

  build() {

    Text(this.item)
      .width('100%')
      .height('5%')
      .backgroundColor(Color.Orange)
      .textAlign(TextAlign.Center)
      .borderRadius(10)
      .onClick((ck:ClickEvent) => {

        if (this.item=='布局控件') {
          router.pushUrl({url:PAGE_UI_MAIN})

        }else {

          prompt.showToast({message:this.item})
        }
      })


  }
}
