//
//  NSDictionary+Extend.m
//  firtstTest
//
//  Created by JiangJiahao on 16/8/21.
//  Copyright © 2016年 JiangJiahao. All rights reserved.
//

#import "NSDictionary+Extend.h"

@implementation NSDictionary (Extend)

- (NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level{
    // 初始化可变字符
    NSMutableString *string = [NSMutableString string];
    // 拼接开头
    [string appendString:@"["];
    
    // 拼接字典中所有键值对
    [self enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [string appendFormat:@"%@:",key];
        [string appendFormat:@"%@",obj];
    }];
    
    [string appendString:@"]"];
    
    return string;
}

- (NSData *)convertToData{
    NSData *data = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:nil];
    return data;
}

@end
