//
//  FilePath.m
//  firtstTest
//
//  Created by JiangJiahao on 16/8/28.
//  Copyright © 2016年 JiangJiahao. All rights reserved.
//

#import "FilePath.h"

#define IMAGEPATH @"images"

@implementation FilePath

+ (NSString *)homePath{
    return NSHomeDirectory();
}

+ (NSString *)mainBunblePath{
    return [[NSBundle mainBundle] bundlePath];
}

+ (NSString *)filePath:(NSString *)subPath{
    NSString *mainBunblePath = [[NSBundle mainBundle] bundlePath];
    return [NSString stringWithFormat:@"%@/%@",mainBunblePath,subPath];
}

+ (NSString *)imagePath{
    NSFileManager *fm = [NSFileManager defaultManager];
    if (![fm fileExistsAtPath:[self filePath:IMAGEPATH]]) {
        [fm createDirectoryAtPath:[self filePath:IMAGEPATH] withIntermediateDirectories:nil attributes:nil error:nil];
    }
    return [self filePath:IMAGEPATH];
}

@end
