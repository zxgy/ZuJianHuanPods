//
//  NSMutableArray+Extension.m
//  bbbb
//
//  Created by JM on 2021/8/22.
//

#import "NSMutableArray+Extension.h"
#import <objc/runtime.h>

@implementation NSMutableArray (Extension)

+ (void)load {
    Class cls = NSClassFromString(@"__NSArrayM");
    Method oldMethod = class_getInstanceMethod(cls, @selector(insertObject:atIndex:));
    Method newMethod = class_getInstanceMethod(cls, @selector(jm_insertObject:atIndex:));
    
    method_exchangeImplementations(oldMethod, newMethod);
}

+ (void)initialize
{
    if (self == [NSMutableArray class]) {
        Class cls = NSClassFromString(@"__NSArrayM");
        Method oldMethod = class_getInstanceMethod(cls, @selector(insertObject:atIndex:));
        Method newMethod = class_getInstanceMethod(cls, @selector(jm_insertObject:atIndex:));
        
        method_exchangeImplementations(oldMethod, newMethod);
    }
}

- (void)jm_insertObject:(id)anObject atIndex:(NSUInteger)index {
    NSLog(@"%s执行了", __func__);
    
    [self insertObject:anObject atIndex:index];
}

@end
