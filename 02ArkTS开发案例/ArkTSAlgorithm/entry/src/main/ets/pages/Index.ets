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
import Logger from '../common/utils/Logger';
import { multiplicationTable } from '../common/utils/Method';
import { DaffodilsNumberCustomDialog } from '../view/DaffodilsNumberCustomDialog';
import { IsLeapYearCustomDialog } from '../view/IsLeapYearCustomDialog';
import { IsPalindromicStringCustomDialog } from '../view/IsPalindromicStringCustomDialog';
import { MultiplicationTableCustomDialog } from '../view/MultiplicationTableCustomDialog';
import { StringReversalCustomDialog } from '../view/StringReversalCustomDialog';

@Entry
@Component
struct Index {
  daffodilsNumberCustomDialogController: CustomDialogController | null = new CustomDialogController({
    builder: DaffodilsNumberCustomDialog(),
    alignment: DialogAlignment.Center,
    offset: { dx: CommonConstants.OFFSET_X, dy: CommonConstants.OFFSET_Y }
  });
  multiplicationTableCustomDialogController: CustomDialogController | null = new CustomDialogController({
    builder: MultiplicationTableCustomDialog(),
    alignment: DialogAlignment.Center,
    offset: { dx: CommonConstants.OFFSET_X, dy: CommonConstants.OFFSET_Y }
  });
  isPalindromicStringCustomDialogController: CustomDialogController | null = new CustomDialogController({
    builder: IsPalindromicStringCustomDialog(),
    alignment: DialogAlignment.Center,
    offset: { dx: CommonConstants.OFFSET_X, dy: CommonConstants.OFFSET_Y }
  });
  stringReversalCustomDialogController: CustomDialogController | null = new CustomDialogController({
    builder: StringReversalCustomDialog(),
    alignment: DialogAlignment.Center,
    offset: { dx: CommonConstants.OFFSET_X, dy: CommonConstants.OFFSET_Y }
  });
  isLeapYearCustomDialogController: CustomDialogController | null = new CustomDialogController({
    builder: IsLeapYearCustomDialog(),
    alignment: DialogAlignment.Center,
    offset: { dx: CommonConstants.OFFSET_X, dy: CommonConstants.OFFSET_Y }
  });

  aboutToAppear(): void {
    AppStorage.setOrCreate('uiContext', this.getUIContext());
  }

  build() {
    Column() {
      Text($r('app.string.ArkTS_Development_Case'))
        .width(CommonConstants.PERCENT_NINETY)
        .margin({
          top: $r('app.float.text_margin_top'),
          bottom: $r('app.float.text_margin_bottom'),
          left: $r('app.float.text_margin_left'),
          right: $r('app.float.text_margin_right')
        })
        .font({ size: $r('app.float.text_font_size'), weight: CommonConstants.FONT_WEIGHT_SEVEN_HUNDRED })
      Column() {
        Button($r('app.string.DaffodilsNumber'))
          .width($r('app.float.button_width'))
          .height($r('app.float.button_height'))
          .onClick(() => {
            this.daffodilsNumberCustomDialogController?.open();
          })
        Button($r('app.string.MultiplicationTable'))
          .width($r('app.float.button_width'))
          .height($r('app.float.button_height'))
          .margin({ top: $r('app.float.button_margin_top') })
          .onClick(() => {
            this.multiplicationTableCustomDialogController?.open();
            let result = multiplicationTable();
            for (let index = 0; index < result.length; index++) {
              Logger.info(result[index].toString());
            }
          })
        Button($r('app.string.IsPalindromicString'))
          .width($r('app.float.button_width'))
          .height($r('app.float.button_height'))
          .margin({ top: $r('app.float.button_margin_top') })
          .onClick(() => {
            this.isPalindromicStringCustomDialogController?.open();
          })
        Button($r('app.string.StringReversal'))
          .width($r('app.float.button_width'))
          .height($r('app.float.button_height'))
          .margin({ top: $r('app.float.button_margin_top') })
          .onClick(() => {
            this.stringReversalCustomDialogController?.open();
          })
        Button($r('app.string.IsLeapYear'))
          .width($r('app.float.button_width'))
          .height($r('app.float.button_height'))
          .margin({
            top: $r('app.float.button_margin_top'),
            bottom: $r('app.float.button_margin_bottom')
          })
          .onClick(() => {
            this.isLeapYearCustomDialogController?.open();
          })
      }
      .width(CommonConstants.PERCENT_FULL)
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .width(CommonConstants.PERCENT_FULL)
    .height(CommonConstants.PERCENT_FULL)
  }
}