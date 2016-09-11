//
//  FEData.m
//  firtstTest
//
//  Created by JiangJiahao on 16/8/21.
//  Copyright © 2016年 JiangJiahao. All rights reserved.
//

#import "FEData.h"

@implementation FEData

+ (FEData *)createFEDataByPath:(NSString *)path{
    FEData *feData = [[FEData alloc] init];
    [feData getPathType:path];
    return feData;
}

- (id)init{
    self = [super init];
    if (self) {
        self.fileType = ENUM_FEFileTypeDir;
    }
    
    return self;
}

- (void)getPathType:(NSString *)path{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSDictionary *typeDic = @{@"jpg":numberInteger(ENUM_FEFileTypeJpg),
                                  @"txt":numberInteger(ENUM_FEFileTypeTxt)
                                  };
        
        NSString *pathExt = [path pathExtension];
        NSInteger type = [[typeDic objectForKey:pathExt] integerValue];
        [self setFileType:type];
    });
    

}

- (UIImage *)getIconImage:(ENUM_FEFileType)fileType{
    return nil;
}

@end
