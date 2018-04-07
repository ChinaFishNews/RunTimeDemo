//
//  ViewController.m
//  RunTimeDemo
//
//  Created by 新闻 on 2018/4/7.
//  Copyright © 2018年 新闻. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "Person.h"
#import <objc/message.h>
#import <objc/runtime.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //  clang -rewrite-objc 文件名 该命令可查看底层实现
    
//    Person * p = [Person alloc];
//    p = [p init];
//    [p eat];
//    [p performSelector:@selector(eat)];
    
//    Person *p = objc_msgSend(Person.class, @selector(alloc));
//    p = objc_msgSend(p, @selector(init));
//    objc_msgSend(p, @selector(eat));

    Person *p = objc_msgSend(objc_getClass("Person"), sel_registerName("alloc"));
    p = objc_msgSend(p, sel_registerName("init"));
    objc_msgSend(p, sel_registerName("eat"));

}





@end
