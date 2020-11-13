//
//  HelloNil.m
//  HelloOC
//
//  Created by grassswwang(王圣伟) on 2020/11/12.
//

#import "HelloNil.h"
#import "PersonFactory.h"

@implementation HelloNil

+ (void)testNil{
    NSString *str = nil;
    NSUInteger count = [str length];
    NSLog(@"nil count is %d",count);
   
    Person *newPerson = [PersonFactory copyPerson:nil];
    NSLog(@"newPerson.name is %s",newPerson.name);
    NSLog(@"newPerson is %@",newPerson);
    
    
    Person *newPerson2 = NULL;
    [newPerson2 name];
    NSLog(@"null newPerson.name is %s",newPerson2.name);
}


@end
