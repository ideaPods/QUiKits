//
//  NSObject+DynamicCast.m
//  QUiKits
//
//  Created by williamQiu<ideapods@163.com> on 2017/01/21.
//  Copyright © 2017年 williamQiu. All rights reserved.
//

#import "NSObject+DynamicCast.h"

@implementation NSObject (ObjectDynamicCast)
- (NSObject *)dynamicCast
{
    if (!self) {
        return self;
    }
    return nil;
}

+ (id)dynamicCast:(id)object
{
    if (object && [object isKindOfClass:[self class]]) {
        return object;
    }
    return nil;
}

@end

@implementation NSString (StringDynamicCast)
- (NSString *)dynamicCast
{
    if (self && [self isKindOfClass:[NSString class]]) {
        if (0 < self.length) {
            return self;
        }
    }
    
    return nil;
}
+ (NSString *)dynamicCast:(id)object
{
    if (object && [object isKindOfClass:[NSString class]]) {
        NSString *str = (NSString *)object;
        if (0 < str.length) {
            return str;
        }
    }
    
    return nil;
}

@end


#pragma mark- NSDictionary Cast
@implementation NSDictionary (DictionaryDynamicCast)
- (NSDictionary *)dynamicCast
{
    if (self && [self isKindOfClass:[NSDictionary class]]) {
        //if (self.count > 0) {
            return self;
        //}
    }
    
    return nil;
}

+ (NSDictionary *)dynamicCast:(id)object
{
    if (object && [object isKindOfClass:[NSDictionary class]]) {
        NSDictionary *dict = (NSDictionary *)object;
        //if (dict.count > 0) {
            return dict;
        //}
    }
    
    return nil;
}

@end

#pragma mark- NSArray Cast
@implementation NSArray (ArrayDynamicCast)
- (NSArray *)dynamicCast
{
    if (self && [self isKindOfClass:[NSArray class]]) {
        //if (self.count > 0) {
        return self;
        //}
    }
    
    return nil;
}

+ (NSArray *)dynamicCast:(id)object
{
    if (object && [object isKindOfClass:[NSArray class]]) {
        NSArray *array = (NSArray *)object;
        //if (array.count > 0) {
        return array;
        //}
    }
    
    return nil;
}

@end

#pragma mark- NSNumber Cast
@implementation NSNumber (NumberDynamicCast)
- (NSNumber *)dynamicCast
{
    if (self && [self isKindOfClass:[NSNumber class]]) {
        return self;
    }
    
    return nil;
}

+ (NSNumber *)dynamicCast:(id)object
{
    if (object && [object isKindOfClass:[NSNumber class]]) {
        NSNumber *aNumber = (NSNumber *)object;
        return aNumber;
    }
    
    return nil;
}

@end
