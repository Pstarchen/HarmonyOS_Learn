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

export function daffodilsNumber(): number[] {
  let result: number[] = [];
  for (let i = 100; i < 1000; i++) {
    let unitsDigit: number = i % 10;
    let tenthsDigit: number = Math.floor(i / 10) - Math.floor(i / 100) * 10;
    let hundredthsDigit: number = Math.floor(i / 100);
    if (i === unitsDigit * unitsDigit * unitsDigit + tenthsDigit * tenthsDigit * tenthsDigit +
      hundredthsDigit * hundredthsDigit * hundredthsDigit) {
      result.push(i);
    }
  }
  return result;
}

export function multiplicationTable(): string[][] {
  let result: string[][] = [];
  for (let i = 1; i <= 9; i++) {
    let index: string[] = [];
    for (let j = 1; j <= i; j++) {
      let temp: string = j + ' * ' + i + ' = ' + i * j;
      index.push(temp);
    }
    result.push(index);
  }
  return result;
}

export function isPalindromicString(content: string): boolean {
  let result: boolean = true;
  let i: number = 0;
  let j: number = content.length - 1;
  while (i <= j) {
    if (content.charAt(i) !== content.charAt(j)) {
      result = false;
      break;
    }
    i++;
    j--;
  }
  return result;
}

export function stringReversal(content: string): string {
  let result: string = '';
  for (let index = content.length - 1; index >= 0; index--) {
    result += content.charAt(index);
  }
  return result;
}

export function isLeapYear(year: number): boolean {
  let result: boolean = false;
  if ((year % 4 === 0 && year % 100 !== 0) || (year % 400 === 0)) {
    result = true;
  } else {
    result = false;
  }
  return result;
}