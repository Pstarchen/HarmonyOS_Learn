import { BusinessError } from '@kit.BasicServicesKit';
@Entry
@Component
struct Index {
  @State message: string = 'Hi there';

  build() {
    Row(){
      Column(){
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        //   添加按钮
        Button(){
          Text('Back')
            .fontSize(30)
            .fontWeight(FontWeight.Bold)
        }
        .type(ButtonType.Capsule)
        .margin({
          top:20
        })
        .backgroundColor('#0D9FFB')
        .width('40%')
        .height('5%')
        // 跳转按钮绑定onClick事件，单击时跳转到第二页
        .onClick(()=>{
          console.log(`Succeeded in clicking the 'Back' button.`)
          let uiContext:UIContext = this.getUIContext();
          let router = uiContext.getRouter();
          router.pushUrl({url:'pages/Index'}).then(()=>{
            console.info('Succeeded in returning to the first page.')
          }).catch((err: BusinessError)=>{
            console.error(`Failed to return to the first page. Code is ${err.code}, message is ${err.message}`)
          })
        })
      }
      .width('100%')
    }
    .width('100%')
  }
}