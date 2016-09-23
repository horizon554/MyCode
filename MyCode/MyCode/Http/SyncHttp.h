//
//  SyncHttp.h
//  MyCode
//
//  Created by JiangJiahao on 16/9/17.
//  Copyright © 2016年 JiangJiahao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SyncHttp : NSObject

+ (void)syncHttpWithUrl:(NSString *)url paraDic:(NSDictionary *)paraDic callBack:(void (^)(id))block;

@end
