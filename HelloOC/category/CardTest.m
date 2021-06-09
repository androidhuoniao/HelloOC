//
//  CardTest.m
//  HelloOC
//
//  Created by grassswwang on 2021/6/7.
//

#import "CardTest.h"
#import "Card.h"
#import "Card+Public.h"

@implementation CardTest

+ (void)run {
    Card *card = [[Card alloc] init];
    [card drive];
    [card publicMethodA];
}
@end
