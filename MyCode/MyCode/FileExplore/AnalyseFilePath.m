//
//  AnalyseFilePath.m
//  firtstTest
//
//  Created by JiangJiahao on 16/8/21.
//  Copyright © 2016年 JiangJiahao. All rights reserved.
//

#import "AnalyseFilePath.h"

@interface AnalyseFilePath ()

@property (nonatomic) NSFileManager *fileManager;

@end

@implementation AnalyseFilePath

+ (NSArray *)analyseFilePath:(NSString *)filePath{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSArray *contentsArr = [fileManager contentsOfDirectoryAtPath:filePath error:nil];
    [contentsArr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSString *fullPath = [NSString stringWithFormat:@"%@/%@",filePath,obj];
        BOOL isDir = [self isDirectory:fullPath];
//        NSLog(@"contentsPath:%@,isDir:%d",fullPath,isDir);
    }];
    return contentsArr;
}

+ (BOOL)isDirectory:(NSString *)path{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL isDir = NO;
    [fileManager fileExistsAtPath:path isDirectory:&isDir];
    return isDir;
}

@end
