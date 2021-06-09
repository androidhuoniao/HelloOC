//
//  main.m
//  HelloOC
//
//  Created by grass on 2020/11/7.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Person.h"
#import "Man.h"
#import "Woman.h"
#import "Person+Relations.h"
#import "DemoMain.h"
#import "HelloNil.h"
#import "Controler.h"
#import "HelloBlock.h"
#import "HelloNSArray.h"
#import "HelloNSDict.h"
#import "HelloNSString.h"
#import "HelloSingleton.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
//        int value1, value2, sum;
//        value1 = 20;
//        value2 = 20;
//        sum = value1 + value2;
//        NSLog(@"%i plus %i is %i", value1,value2, sum);
//
//        Fraction *fraction = [Fraction new];
//
//        [fraction setNumerator:1];
//        [fraction setDenomiator:3];
//        [fraction print];
//
//        [fraction setAge:1];
//        NSLog(@"age is %i ",[fraction age]);
//
//        Person *person =[Person new];
//        [person setName:@"grass" AndAge:28];
//        person.toString;
//
//        person =[Man new];
//        person.yourSex;
//
//        person =[Woman new];
//        person.yourSex;
//
//        Man * man =[Man new];
//        if ([man conformsToProtocol:@protocol(PersonBehaivor)] == YES) {
//            NSLog(@"Man has protocol PersonBehavior ");
//        }
//
//        Person* addItem = [Person new];
//        [addItem setName:@"honey" AndAge:@20];
//
//        Person* addItem2 = [Person new];
//        [addItem2 setName:@"yuzhi" AndAge:@3];
//
//        [person addFriend:addItem];
//        [person addFriend:addItem2];
//
////        [person sayHelloToAllFriends];
//
//        [HelloNil testNil];
//
//        Controler *controller = [[Controler alloc] init];
//        HelloBlock *block = [[HelloBlock alloc] init];
//        [block startTest];
//
//        [DemoMain helloExternKeyWord];
//        [DemoMain helloStaticKeyWord];
        
        [HelloNSString run];
        HelloSingleton *singleton1 = [HelloSingleton sharedInstance];
        HelloSingleton *singleton2 = [[HelloSingleton alloc] init];
        NSLog(@"singleton1:%@ singleton2:%@",singleton1, singleton2);
        NSLog(@"(singleton1 == singleton2):%d",(singleton1 == singleton2));
        NSLog(@"singleton1 pointer is %p", &singleton1);
        NSLog(@"singleton2 pointer is %p", &singleton2);
        
    }
    return 0;
}
