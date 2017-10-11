//
//  NSString+Extension.h
//  QUiKits
//
//  Created by williamQiu<ideapods@163.com> on 2017/02/06.
//  Copyright © 2017年 williamQiu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (NSStringExtension)

+ (NSString *)JsonStringFromObject:(id)object;

- (NSMutableAttributedString *)stringWithAttributes:(NSDictionary *)attributes regex:(NSString *)regex;

- (BOOL)containsEmojiCode;

- (NSString *)urlStringByAppendingQueries:(NSDictionary<NSString *, NSString *> *)queries;

@end
