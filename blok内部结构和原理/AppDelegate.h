//
//  AppDelegate.h
//  blok内部结构和原理
//
//  Created by liuningbo on 2021/3/9.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

