//
//  NSObject+Association.m
//  QUiKits
//
//  Created by williamQiu<ideapods@163.com> on 2017/04/10.
//  Copyright © 2017年 williamQiu. All rights reserved.
//


#import "NSObject+Association.h"

#import <objc/runtime.h>


static char associattiedObjectsKey;
@implementation NSObject (ObjectRuntimeAssociated)
- (id)associattedObjectForKey:(NSString *)key
{
    NSMutableDictionary *dict = objc_getAssociatedObject(self, &associattiedObjectsKey);

    return [dict objectForKey:key];
}

- (void)removeAssociattedObjectForKey:(NSString *)key
{
    NSMutableDictionary *dict = objc_getAssociatedObject(self, &associattiedObjectsKey);

    [dict removeObjectForKey:key];
}

- (void)setAssiciationObject:(id)object forKey:(NSString *)key
{
    NSMutableDictionary *dict = objc_getAssociatedObject(self, &associattiedObjectsKey);

    if (!dict) {
        dict = [NSMutableDictionary dictionary];
        objc_setAssociatedObject(self, &associattiedObjectsKey, dict, OBJC_ASSOCIATION_RETAIN);
    }

    if (object == nil) {
        [dict removeObjectForKey:key];
    } else {
        [dict setObject:object forKey:key];
    }
}

- (NSDictionary *)getPropertyDescriptions
{
    NSMutableDictionary *propInfos = [NSMutableDictionary dictionary];
    unsigned int outCount, i;
    objc_property_t *properties = class_copyPropertyList([self class], &outCount);
    for (i = 0; i<outCount; i++) {
        objc_property_t property = properties[i];
        const char* char_p =property_getName(property);
        NSString *propName = [NSString stringWithUTF8String:char_p];
        id propValue = [self valueForKey:(NSString *)propName];
        if (propValue) [propInfos setObject:propValue forKey:propName];
    }
    free(properties);
    
    return [NSDictionary dictionaryWithDictionary:propInfos];
}
@end
