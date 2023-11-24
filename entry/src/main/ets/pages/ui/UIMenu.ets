import prompt from '@ohos.promptAction'
import router from '@ohos.router'
import { PAGE_UI_IMAGE_DEMO, PAGE_UI_TAB_DEMO, PAGE_UI_TEXT_DEMO } from '../../common/Constant'

@Entry
@Component
struct UIMenu {
  private uiMenu: string[] = ['Text', 'Image', 'Video', 'HTTP', 'TAB', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5']

  build() {

    Column() {

      Grid() {
        ForEach(this.uiMenu, (item: string) => {
          GridItem() {
            GridItemView({ item })
          }
        })
      }
      .margin(12)
      .columnsTemplate('1fr 1fr')
      .columnsGap('8')
      .rowsGap('12')

    }.width('100%').height('100%')

  }
}

@Component
struct GridItemView {
  private item: string = ''

  build() {

    Column() {
      Text(this.item).height(80)
    }.border({ radius: 8 }).width('100%').backgroundColor(Color.Orange)
    .onClick(() => {
      switch (this.item) {
        case 'Text': {
          router.pushUrl({ url: PAGE_UI_TEXT_DEMO })
          break

        }
        case 'Image': {
          router.pushUrl({ url: PAGE_UI_IMAGE_DEMO })
          break


        }
        case 'TAB': {
          router.pushUrl({ url: PAGE_UI_TAB_DEMO })
          break


        }
        default:
          prompt.showToast({ message: 'default' })
          break
      }
    })

  }
}

