//
//  ComponentOne.m
//  HelloOC
//
//  Created by grassswwang(王圣伟) on 2020/11/13.
//

#import "ComponentOne.h"

@implementation ComponentOne
//实现组件中的注册方法
-(void)addTarget:(id)target Action:(SEL)action {
    self.target = target;
    self.action = action;
}
//实现组件的启动方法
-(void)start {
    //回调target对象中的action方法
    [self.target performSelector:_action];
}
@end
