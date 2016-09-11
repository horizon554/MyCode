//
//  AnalyseFilePath.h
//  firtstTest
//
//  Created by JiangJiahao on 16/8/21.
//  Copyright © 2016年 JiangJiahao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FEData.h"

@interface AnalyseFilePath : NSObject

+ (NSArray *)analyseFilePath:(NSString *)filePath;

//！是否目录
+ (BOOL)isDirectory:(NSString *)path;

@end
