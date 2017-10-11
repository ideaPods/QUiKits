//
//  NSObject+Association.h
//  QUiKits
//
//  Created by williamQiu<ideapods@163.com> on 2017/04/10.
//  Copyright © 2017年 williamQiu. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface NSObject (ObjectRuntimeAssociated)

- (id)associattedObjectForKey:(NSString *)key;
- (void)removeAssociattedObjectForKey:(NSString *)key;
- (void)setAssiciationObject:(id)object forKey:(NSString *)key;
- (NSDictionary *)getPropertyDescriptions;

@end
