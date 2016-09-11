//
//  HttpRequest.m
//  firtstTest
//
//  Created by JiangJiahao on 16/8/14.
//  Copyright © 2016年 JiangJiahao. All rights reserved.
//

#import "HttpRequest.h"

@implementation HttpRequest

+ (NSURLRequest *)createGetRequest:(NSString *)url paraDic:(NSDictionary *)dic{
    if (!url) {
        return nil;
    }
    
    __block NSMutableString *urlStr = [NSMutableString stringWithString:url];
    if (dic) {
        [urlStr appendString:@"?"];
        
        [dic enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
            [urlStr appendFormat:@"%@=",key];
            [urlStr appendFormat:@"%@",obj];
            if (!*stop) {
                [urlStr appendString:@"&"];
            }
        }];
    }
    
    NSURL *URL = [NSURL URLWithString:urlStr];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL cachePolicy:NSURLRequestReloadIgnoringCacheData timeoutInterval:10];
    
    return request;

}

+ (NSMutableURLRequest *)createPostRequest:(NSString *)url paraDic:(NSDictionary *)dic{
    NSURL *URL = [NSURL URLWithString:url];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:URL];
    request.HTTPMethod = @"POST";
    NSData *data = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:nil];

    request.HTTPBody = data;
    
    return request;
}

@end
