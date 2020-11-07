//
//  main.m
//  HelloOC
//
//  Created by grass on 2020/11/7.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Person.h"

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
        
        [fraction setAge:1];
        NSLog(@"age is %i ",[fraction age]);
        
        Person *person =[Person new];
        [person setName:@"grass" AndAge:28];
        person.toString;
        
        
        
    }
    return 0;
}
