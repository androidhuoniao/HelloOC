//
//  Fraction.h
//  HelloOC
//
//  Created by grass on 2020/11/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Fraction : NSObject
@property int age;
- (void) print;
- (void) setNumerator:(int)n;
- (void) setDenomiator:(int)m;
- (int) getNumberator;
@end

NS_ASSUME_NONNULL_END
