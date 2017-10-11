//
//  NSObject+DynamicCast.h
//  QUiKits
//
//  Created by williamQiu<ideapods@163.com> on 2017/01/21.
//  Copyright © 2017年 williamQiu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSObject (ObjectDynamicCast)
- (NSObject *)dynamicCast;
+ (id)dynamicCast:(id)object;

@end

@interface NSString (StringDynamicCast)
- (NSString *)dynamicCast;
+ (NSString *)dynamicCast:(id)object;

@end

@interface NSDictionary (DictionaryDynamicCast)
- (NSDictionary *)dynamicCast;
+ (NSDictionary *)dynamicCast:(id)object;

@end


@interface NSArray (ArrayDynamicCast)
- (NSArray *)dynamicCast;
+ (NSArray *)dynamicCast:(id)object;

@end

@interface NSNumber (NumberDynamicCast)
- (NSNumber *)dynamicCast;
+ (NSNumber *)dynamicCast:(id)object;

@end
