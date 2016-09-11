//
//  FilePath.h
//  firtstTest
//
//  Created by JiangJiahao on 16/8/28.
//  Copyright © 2016年 JiangJiahao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FilePath : NSObject

+ (NSString *)homePath;

+ (NSString *)mainBunblePath;

+ (NSString *)filePath:(NSString *)subPath;

+ (NSString *)imagePath;
@end
