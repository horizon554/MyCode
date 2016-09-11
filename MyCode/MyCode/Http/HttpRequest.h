//
//  HttpRequest.h
//  firtstTest
//
//  Created by JiangJiahao on 16/8/14.
//  Copyright © 2016年 JiangJiahao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HttpRequest : NSObject


+ (NSURLRequest *)createGetRequest:(NSString *)url paraDic:(NSDictionary *)dic;

+ (NSMutableURLRequest *)createPostRequest:(NSString *)url paraDic:(NSDictionary *)dic;

@end
