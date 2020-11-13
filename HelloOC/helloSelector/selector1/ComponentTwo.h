//
//  ComponentTwo.h
//  HelloOC
//
//  Created by grassswwang(王圣伟) on 2020/11/13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ComponentTwo : NSObject
//记录target和action的属性
@property (nonatomic, strong) id target;
@property (nonatomic, assign) SEL action;
 
//声明目标动作注册方法
-(void) addTarget : (id)target Action : (SEL)action;
 
//组件一的启用方法
-(void) start;
@end

NS_ASSUME_NONNULL_END
