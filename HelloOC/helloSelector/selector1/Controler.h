//
//  Controler.h
//  HelloOC
//
//  Created by grassswwang(王圣伟) on 2020/11/13.
//

#import <Foundation/Foundation.h>
#import "ComponentOne.h"
#import "ComponentTwo.h"


NS_ASSUME_NONNULL_BEGIN
//在Controler中使用ComponentOne组件和ComponentTow组件
//为了隐藏Controler内部组件，我们用延展进行组件的声明和调用
@interface Controler : NSObject
//声明组件
@property(nonatomic, strong) ComponentOne *oneComponent;
@property(nonatomic, strong) ComponentTwo *twoComponent;

//声明Controler中的方法，用于组件的回调
//声明组件一中回调的方法，无惨方法
-(void)componentOneFunction;

//声明组件二中的回调方法，有参方法
-(void)componentTwoFunction : (NSString *)strValue;
@end

NS_ASSUME_NONNULL_END
