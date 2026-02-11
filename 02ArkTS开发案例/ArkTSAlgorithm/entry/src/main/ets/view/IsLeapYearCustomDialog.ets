/*
 * Copyright (c) 2024 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { CommonConstants } from '../common/constants/Constants';
import CommonUtils from '../common/utils/CommonUtils';
import { isLeapYear } from '../common/utils/Method';

@CustomDialog
@Component
export struct IsLeapYearCustomDialog {
  @State content: string = '';
  @State result: boolean = false;
  IsPalindromicStringCustomDialogController?: CustomDialogController;

  build() {
    Column() {
      Column() {
        Text($r('app.string.ArkTS_Development_Case'))
          .height($r('app.float.button_height'))
          .font({ size: $r('sys.float.ohos_id_text_size_headline8') })
          .fontColor($r('sys.color.ohos_id_color_text_primary'))
          .margin({ top: $r('app.float.dialog_text_margin_top') })
        Text($r('app.string.Judgment_of_leap_year'))
          .font({ size: $r('sys.float.ohos_id_text_size_body2') })
          .fontColor($r('sys.color.ohos_id_color_text_secondary'))
          .margin({ left: $r('app.float.dialog_text_margin_left') })
      }
      .alignItems(HorizontalAlign.Center)
      .width(CommonConstants.PERCENT_FULL)
      .height($r('app.float.dialog_text_height'))

      TextInput({ placeholder: CommonConstants.LEAP_YEAR_INPUT })
        .margin({ top: $r('app.float.dialog_padding') })
        .height($r('app.float.dialog_textInput_height'))
        .showUnderline(true)
        .onChange((value: string) => {
          this.content = value;
        })
      Button($r('app.string.IsLeapYear'))
        .width($r('app.float.dialog_button_width'))
        .margin({
          top: $r('app.float.button_margin_bottom'),
          bottom: $r('app.float.dialog_padding')
        })
        .onClick(() => {
          this.result = isLeapYear(Number.parseInt(this.content));
          if (this.result) {
            CommonUtils.showToast(CommonConstants.LEAP_YEAR_YES);
          } else {
            CommonUtils.showToast(CommonConstants.LEAP_YEAR_NO);
          }
        })
    }
    .alignItems(HorizontalAlign.Center)
    .padding({
      left: $r('app.float.dialog_padding'),
      right: $r('app.float.dialog_padding')
    })
  }
}