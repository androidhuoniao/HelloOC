//
//  Fraction.m
//  HelloOC
//
//  Created by grass on 2020/11/7.
//

#import "Fraction.h"

@implementation Fraction
{
    int numberator;
    int denoimator;
}
- (void)print{
    NSLog(@"%i/%i=%i",numberator,denoimator,numberator/denoimator);
}
- (void)setNumerator:(int)n{
    numberator = n;
}

- (void)setDenomiator:(int)m{
    denoimator = m;
}
@end
