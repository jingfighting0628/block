//
//  main.m
//  blok内部结构和原理
//
//  Created by liuningbo on 2021/3/9.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
//终端cd到main.m所在的路径然后
//输入clang -x objective-c -rewrite-objc -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk main.m
//将main.m编译成main.cpp文件
//https://www.jianshu.com/p/221d0778dcaa







void blockTest()
{
    __block int num = 10;
    void(^block)(void) = ^{
        NSLog(@"%d",num);
        num = 30 ;
    };
    num = 20;
    block();
    NSLog(@"%d",num);
    
    

    
}

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
        
        blockTest();
        
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}

