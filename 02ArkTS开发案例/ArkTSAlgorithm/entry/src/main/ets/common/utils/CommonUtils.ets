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

import { BusinessError } from '@kit.BasicServicesKit';
import { CommonConstants } from '../constants/Constants';
import Logger from './Logger';

export class CommonUtils {
  showToast(message: string) {
    const uiContext: UIContext | undefined = AppStorage.get('uiContext');
    try {
      uiContext!.getPromptAction().showToast({
        message: message,
        duration: CommonConstants.TOAST_TIME
      });
    } catch (error) {
      let err = error as BusinessError;
      Logger.error('CommonUtils', `Show toast failed, errCode: ${err.code}, errMessage: ${err.message}.`);
    }
  }
}

let commonUtils = new CommonUtils();

export default commonUtils as CommonUtils;