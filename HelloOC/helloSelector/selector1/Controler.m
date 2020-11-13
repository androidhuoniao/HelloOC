//
//  Controler.m
//  HelloOC
//
//  Created by grassswwang(王圣伟) on 2020/11/13.
//

#import "Controler.h"

@implementation Controler
//进行组件的初始化并注册回调方法
- (instancetype)init
{
    self = [super init];
    if (self) {
        //给组件一分配内存空间
        self.oneComponent = [[ComponentOne alloc] init];
        //注册组件一的回调方法
        [self.oneComponent addTarget:self Action:@selector(componentOneFunction)];
        //启动组件一
        [self.oneComponent start];
        
        //给组件二分配内存空间
        self.twoComponent = [[ComponentTwo alloc] init];
        //注册组件二的回调方法
        [self.twoComponent addTarget:self Action:@selector(componentTwoFunction:)];
        //启动组件二
        [self.twoComponent start];
    }
    return self;
}


//实现controler中的回调方法
-(void)componentOneFunction
{
    NSLog(@"我是Controler中的componentOneFunction方法,我是在组件一中回调使用的");
}

-(void)componentTwoFunction:(NSString *)strValue
{
    NSLog(@"我是Controler中的componenTwoFunction方法，我的参数%@是从组件二中回调时获取的", strValue);
}
@end
