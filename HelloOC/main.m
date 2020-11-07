//
//  main.m
//  HelloOC
//
//  Created by grass on 2020/11/7.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        int value1, value2, sum;
        value1 = 20;
        value2 = 20;
        sum = value1 + value2;
        NSLog(@"%i plus %i is %i", value1,value2, sum);
        
        Fraction *fraction = [Fraction new];
        [fraction setNumerator:1];
        [fraction setDenomiator:3];
        [fraction print];
        
        
    }
    return 0;
}
