import { BusinessError } from '@kit.BasicServicesKit';
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Row(){
      Column(){
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      //   添加按钮
        Button(){
          Text('Next')
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
          console.log(`Succeeded in clicking the 'Next' button.`)
          let uiContext:UIContext = this.getUIContext();
          let router = uiContext.getRouter();
          router.pushUrl({url:'pages/Second'}).then(()=>{
            console.info('Succeeded in jumping to the second page.')
          }).catch((err: BusinessError)=>{
            console.error(`Failed to jump to the second page. Code is ${err.code}, message is ${err.message}`)
          })
        })
      }
      .width('100%')
    }
    .width('100%')
  }
}