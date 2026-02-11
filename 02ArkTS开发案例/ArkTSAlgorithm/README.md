# 使用ArkTS语言编写简单算法

## 简介

通过ArkTS语法，完成简单算法的实现。

## 效果展示

![image](screenshots/device/ArkTSAlgorithm.png)

### 工程目录

给出项目中关键的目录结构并描述它们的作用，示例如下：

```
├──entry/src/main/ets/
│  ├──common
│  │  ├──constants
│  │  │  └──Constants.ets                       // 常量类
│  │  └──utils
│  │     ├──CommonUtils.ets                     // 弹窗工具类
│  │     ├──Logger.ets                          // 日志工具类
│  │     └──Method.ets                          // 算法工具类
│  ├──entryability
│  │  └──EntryAbility.ets  
│  ├──entrybackupability
│  │  └──EntryBackupAbility.ets  
│  ├──pages
│  │  └──Index.ets                              // 界面实现
│  └──view
│     ├──DaffodilsNumberCustomDialog.ets        // 水仙花数弹窗实现
│     ├──IsLeapYearCustomDialog.ets             // 闰年判断数弹窗实现 
│     ├──IsPalindromicStringCustomDialog.ets    // 回文字符串判断数弹窗实现
│     ├──MultiplicationTableCustomDialog.ets    // 九九乘法表弹窗实现
│     └──StringReversalCustomDialog.ets         // 字符串反转弹窗实现 
└───entry/src/main/resources                    // 应用资源目录
```

## 相关权限

不涉及

## 使用说明

1. 点击打印水仙花数按钮，弹窗展示1000以内的水仙花数。
2. 点击打印九九乘法表按钮，弹窗提醒用户通过日志查看。
3. 点击判断字符串是否为回文字符串按钮，弹窗提醒用户输入字符串，点击按钮即可弹窗告知用户是否为回文字符串。
4. 点击字符串反转按钮，弹窗提醒用户输入字符串，点击按钮即可弹窗显示反转字符串。
5. 点击判断是否为闰年按钮，弹窗提醒用户输入年份，点击按钮即可弹窗显示该年份是否为闰年。

## 约束与限制

1. 本示例仅支持标准系统上运行，支持设备：华为手机。

2. HarmonyOS系统：HarmonyOS 5.0.5 Release及以上。

3. DevEco Studio版本：DevEco Studio 6.0.2 Release及以上。

4. HarmonyOS SDK版本：HarmonyOS 6.0.2 Release SDK及以上。
