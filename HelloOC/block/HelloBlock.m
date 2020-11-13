//
//  HelloBlock.m
//  HelloOC
//
//  Created by grassswwang(王圣伟) on 2020/11/13.
//

#import "HelloBlock.h"
@interface HelloBlock()
-(void) sortCharArray;
-(int) bianliArray;
-(int) bianliArray:(char *[])array;
-(void) blocktest4;
-(void) blocktest5;
-(void) blocktest6;
@end

@implementation HelloBlock

- (void)startTest{
    void(^block1)(NSString*) = ^(NSString *name){
        NSLog(@"block1 name is %@",name);
    };
    block1(@"grass");
    void(^voidBlock)(void) = ^{
        NSLog(@"i am voidBlock");
    };
    voidBlock();
    
    NSInteger(^returnBlock)(NSInteger) = ^(NSInteger age){
        NSLog(@"returnBolck age is %ld",age);
        return age * 10;
    };
    NSInteger newAge = returnBlock(10);
    NSLog(@"new age is %ld",newAge);
    [self sortCharArray];
    [self blocktest4];
    [self blocktest5];
    [self blocktest6];
}

/**
 实现一个匿名的block
 */
- (void)sortCharArray{
    char *myCharacters[3] = { "TomJohn", "George", "Charles Condomine" };
    
    qsort_b(myCharacters, 3, sizeof(char *), ^(const void *l, const void *r) {
        char *left = *(char **)l;
        char *right = *(char **)r;
        return strncmp(left, right, 1);
    });
    NSString *result = [[NSString alloc] init];
    
    //    [self bianliArray:myCharacters];
}

- (void)blocktest4{
    NSArray *stringsArray = @[ @"string 1",
                               @"String 21",
                               @"string 12",
                               @"String 11",
                               @"String 02" ];
    
    static NSStringCompareOptions comparisonOptions = NSCaseInsensitiveSearch | NSNumericSearch |
    NSWidthInsensitiveSearch | NSForcedOrderingSearch;
    NSLocale *currentLocale = [NSLocale currentLocale];
    
    NSComparator finderSortBlock = ^(id string1, id string2) {
        
        NSRange string1Range = NSMakeRange(0, [string1 length]);
        return [string1 compare:string2 options:comparisonOptions range:string1Range locale:currentLocale];
    };
    
    NSArray *finderSortArray = [stringsArray sortedArrayUsingComparator:finderSortBlock];
    NSLog(@"finderSortArray: %@", finderSortArray);
}

- (void)blocktest5{
    NSArray *stringsArray = @[ @"string 1",
                               @"String 21", // <-
                               @"string 12",
                               @"String 11",
                               @"Strîng 21", // <-
                               @"Striñg 21", // <-
                               @"String 02" ];
    
    NSLocale *currentLocale = [NSLocale currentLocale];
    __block NSUInteger orderedSameCount = 0;
    
    NSArray *diacriticInsensitiveSortArray = [stringsArray sortedArrayUsingComparator:^(id string1, id string2) {
        
        NSRange string1Range = NSMakeRange(0, [string1 length]);
        NSComparisonResult comparisonResult = [string1 compare:string2 options:NSDiacriticInsensitiveSearch range:string1Range locale:currentLocale];
        
        if (comparisonResult == NSOrderedSame) {
            orderedSameCount++;
        }
        return comparisonResult;
    }];
    
    NSLog(@"diacriticInsensitiveSortArray: %@", diacriticInsensitiveSortArray);
    NSLog(@"orderedSameCount: %d", orderedSameCount);
    
}


- (void)blocktest6{
    // typedef 返回值 (^blockNmae)(parameterType1,parameterType2);
    typedef float (^FBlock) (float, float);
    FBlock fblock = ^(float f1,float f2){
        NSLog(@"f1 is%f,f2 is %f",f1,f2);
        return f1 + f2;
    };
    fblock(1,2);
    
    //定义了Sum这种Block类型
    
    typedef int (^Sum) (int, int);
    //定义了sump这种指针类型，这种指针是指向函数的
    typedef int (*Sump) (int, int);
    //定义了一个block变量
    Sum sum = ^(int a, int b) {
        return a + b;
    };
    int c = sum(10, 10);
    
    NSLog(@"%i",c);
}

- (int)bianliArray:(const char *)str_char{
    //    char *str_char[] = {"POrigin", "PModelNum", "PName", "PSN", "PDate", "PAddress", "PHWVer", "PSWVer", "PSWDate", "PSWTime", NULL};/**< 定义字符串数组， 为一个二维数组，这里的ULL为字符串数组结束标志*/
    char i=0;
    char count=0;
    char **ptr = str_char; /**< 定义一个二重指针ptr，指向一个二维数组名str_char， *ptr指向字符串数组中的字符串， **ptr指向字符串数组中字符串中的字符 */
    
    for (ptr=str_char; *ptr!=NULL; ptr++)  /**< 循环直到字符串数组结束 */
    {
        count++;/**< 字符串数组中字符串元素个数 */
        printf("strlen(*ptr) = %d\n", strlen(*ptr)); /**< 字符串数组中字符中的长度，不包含'\0' */
        for (i=0; i<strlen(*ptr); i++)
        {
            printf("**ptr = %c\n", *((char *)(*ptr)+i));    /**< *((char *)(*ptr)+i) 遍历字符串数组 中 字符串 的 单个字符， (*ptr)指向字符串首地址，(char *)(*ptr)指向字符串中的第一个字符，((char *)(*ptr)+i)指向字符串中的字符 */
        }
    }
    
    printf("count = %d\n", count);
    
    return 0;
}
- (int)bianliArray{
    char *str_char[] = {"POrigin", "PModelNum", "PName", "PSN", "PDate", "PAddress", "PHWVer", "PSWVer", "PSWDate", "PSWTime", NULL};/**< 定义字符串数组， 为一个二维数组，这里的ULL为字符串数组结束标志*/
    char i=0;
    char count=0;
    char **ptr = str_char; /**< 定义一个二重指针ptr，指向一个二维数组名str_char， *ptr指向字符串数组中的字符串， **ptr指向字符串数组中字符串中的字符 */
    
    for (ptr=str_char; *ptr!=NULL; ptr++)  /**< 循环直到字符串数组结束 */
    {
        count++;/**< 字符串数组中字符串元素个数 */
        printf("strlen(*ptr) = %d\n", strlen(*ptr)); /**< 字符串数组中字符中的长度，不包含'\0' */
        for (i=0; i<strlen(*ptr); i++)
        {
            printf("**ptr = %c\n", *((char *)(*ptr)+i));    /**< *((char *)(*ptr)+i) 遍历字符串数组 中 字符串 的 单个字符， (*ptr)指向字符串首地址，(char *)(*ptr)指向字符串中的第一个字符，((char *)(*ptr)+i)指向字符串中的字符 */
        }
    }
    
    printf("count = %d\n", count);
    
    return 0;
}

@end



