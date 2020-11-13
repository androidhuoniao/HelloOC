//
//  PersonFactory.m
//  HelloOC
//
//  Created by grassswwang(王圣伟) on 2020/11/12.
//

#import "PersonFactory.h"

@implementation PersonFactory
+ (Person *)makePerson{
    return nil;
}

+ (Person *)copyPerson:(Person *)sourcePerson{
    NSLog(@"sourcePerson is %@",sourcePerson);
    if(sourcePerson == nil){
        return nil;
    }
    Person *newPerson = [[Person alloc] init];
    newPerson.name = sourcePerson.name;
    return newPerson;
}

@end
