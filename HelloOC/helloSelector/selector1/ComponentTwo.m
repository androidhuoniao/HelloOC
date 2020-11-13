//
//  ComponentTwo.m
//  HelloOC
//
//  Created by grassswwang(王圣伟) on 2020/11/13.
//

#import "ComponentTwo.h"

@implementation ComponentTwo
//实现组件中的注册方法
-(void)addTarget:(id)target Action:(SEL)action
{
    self.target = target;
    self.action = action;
}

//组件二的启动方法
-(void)start{
    [self.target performSelector:self.action withObject:@"*组件二中返回的参数*"];
}
@end
