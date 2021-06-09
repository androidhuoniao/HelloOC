//
//  Card+Public.m
//  HelloOC
//
//  Created by grassswwang on 2021/6/7.
//

#import "Card+Public.h"
#import "Card+Local.h"
@implementation Card (Public)
- (void)publicMethodA {
    [self localMethodA];
}
@end
