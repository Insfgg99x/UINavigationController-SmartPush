# UINavigationController+SmartPush

一个可以让UINavigationController push到下一界面时自动隐藏底部UITabbar，pop回来时自动显示底部UITabbar的小工具。


- 普通写法：

```objective-c
SomeViewController *some = [SomeViewController new];
self.hidesBottomBarWhenPushed = YES;//push时隐藏底部tabbar
[self.navigationController pushViewController: some animated : YES];
self.hidesBottomBarWhenPushed = NO;//pop时显示底部tabbar
```

- SmartPush写法:

```
SomeViewController *some = [SomeViewController new];
[self.navigationController pushViewController: some animated : YES];
```

什么都不用做，就可以是达到普通写法的效果~

## 使用方法(Usage)

- CocoaPods

```
pod repo update
pod 'SmartPush', '~> 1.1'
```
- 或者手动添加SmartPush文件夹至项目

🚀🚀🔥然后就完了只能push了，你不用写一句代码就自动可以实现push与pop时底部tabbar的隐藏于现实控制了。


你可以在Controller中关闭只能push（默认开启），关闭智能push:
```
self.fg_disableSmartPush = YES;
```

## 效果演示图

![](/src/demo.gif)
