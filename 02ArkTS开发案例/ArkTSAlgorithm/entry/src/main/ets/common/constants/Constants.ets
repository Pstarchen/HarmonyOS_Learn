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

/**
 * Common constants for all features.
 */
export class CommonConstants {
  /**
   * The offset x of CustomDialog.
   */
  static readonly OFFSET_X: number = 0;

  /**
   * The offset y of CustomDialog.
   */
  static readonly OFFSET_Y: number = -25;

  /**
   * Number for 90%.
   */
  static readonly PERCENT_NINETY: string = '90%';

  /**
   * Number for 100%.
   */
  static readonly PERCENT_FULL: string = '100%';

  /**
   * Number for font weight 700.
   */
  static readonly FONT_WEIGHT_SEVEN_HUNDRED: number = 700;

  /**
   * The placeholder of leap year textInput.
   */
  static readonly LEAP_YEAR_INPUT: string = '请输入一个年份';

  /**
   * The sure answer of wether is a leap year.
   */
  static readonly LEAP_YEAR_YES: string = '该年份是闰年';

  /**
   * The unsure answer of wether is a leap year.
   */
  static readonly LEAP_YEAR_NO: string = '该年份不是闰年';

  /**
   * The placeholder of string textInput.
   */
  static readonly STRING_INPUT: string = '请输入一个字符串';

  /**
   * The sure answer of wether is a palindromic string.
   */
  static readonly PALINDROMIC_STRING_YES: string = '该字符串是回文字符串';

  /**
   * The unsure answer of wether is a palindromic string.
   */
  static readonly PALINDROMIC_STRING_NO: string = '该字符串不是回文字符串';

  /**
   * The result of string reversal.
   */
  static readonly STRING_PRE: string = '反转结果为：';

  /**
   * The time of toast.
   */
  static readonly TOAST_TIME: number = 2000;
}