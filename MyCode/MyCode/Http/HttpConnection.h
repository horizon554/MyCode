//
//  HttpConnection.h
//  firtstTest
//
//  Created by JiangJiahao on 16/8/28.
//  Copyright © 2016年 JiangJiahao. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol HttpConnectionDelegate <NSObject>


@end

@interface HttpConnection : NSObject<NSURLSessionDelegate,NSURLSessionDataDelegate,NSURLSessionTaskDelegate,NSURLSessionDownloadDelegate>
@property (nonatomic,weak) id<HttpConnectionDelegate> delegate;

- (void)startConnectionWithSession:(NSURLSessionTask *)task;

@end
