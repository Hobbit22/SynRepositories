//
//  ViewController.m
//  SynProject
//
//  Created by 胡碧涛 on 2019/12/25.
//  Copyright © 2019 Synjones. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // KVC 的使用
    Person *man = [[Person alloc] init];
    // 存值
    [man setValue:@"Jack" forKey:@"name"];
    // 取值
    NSLog(@"%@", [man valueForKey:@"name"]);
    
    Person *woman = [[Person alloc] init];
    
    man.spouse = woman;
    [man setValue:@"Lily" forKeyPath:@"spouse.name"];
    NSLog(@"%@",[man valueForKeyPath:@"spouse.name"]);
    //  Key 与 KeyPath 要区分开来
    //  Key 可以让你从一个对象中获取值
    //  KeyPath  可以让你通过连续的多个Key获取值，着多个key值用点号 “.” 分割连接起来
}


@end
