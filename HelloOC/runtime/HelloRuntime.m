//
//  HelloRuntime.m
//  HelloOC
//
//  Created by grassswwang on 2021/6/9.
//

#import "HelloRuntime.h"
#import "Person.h"
#import <objc/runtime.h>

@implementation HelloRuntime

+ (void)run {
    NSString *name = @"name";
    objc_property_t property = class_getProperty(self, [name UTF8String]);
    Person *person = [[Person alloc] init];
    NSArray *propertyList = [self getVariableNamesByObject:person];
    [propertyList enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"index: %ld, obj: %@",idx, obj);
    }];
}

//获取类的成员变量名
+ (NSArray *)getVariableNamesByObject:(id)object
{
    unsigned int numIvars = 0;
    //获取类的所有成员变量
    Ivar * ivars = class_copyIvarList([object class], &numIvars);
    //定义一个数组来接收获取的属性名
    NSMutableArray *nameArray = [[NSMutableArray alloc] initWithCapacity:numIvars];
    for(int i = 0; i < numIvars; i++) {
        //得到单个的成员变量
        Ivar thisIvar = ivars[i];
        //得到这个成员变量的类型
        const char *type = ivar_getTypeEncoding(thisIvar);
        NSString *stringType =  [NSString stringWithCString:type encoding:NSUTF8StringEncoding];
        //此处判断非object-c类型时跳过
        if (![stringType hasPrefix:@"@"]) {
            continue;
        }
        //得到成员变量名
        NSString *variableName = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
        [nameArray addObject:variableName];
        
        //这个函数可以得到成员变量的值
        //object_getIvar(object, thisIvar)
        
    }
    free(ivars);
    return nameArray;
}

@end
