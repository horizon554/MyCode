//
//  FEData.h
//  firtstTest
//
//  Created by JiangJiahao on 16/8/21.
//  Copyright © 2016年 JiangJiahao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//定义枚举类型
typedef NS_ENUM(NSInteger,ENUM_FEFileType){
    ENUM_FEFileTypeDir=0,//目录
    ENUM_FEFileTypePng,
    ENUM_FEFileTypeJpg,
    ENUM_FEFileTypeTxt,
    ENUM_FEFileTypeDoc,
    ENUM_FEFileTypeGif,
    ENUM_FEFileTypeMov,
    ENUM_FEFileTypeMp3
};

@interface FEData : NSObject

@property (nonatomic,assign) ENUM_FEFileType fileType;
@property (nonatomic,strong) NSString *fullPath;

@property (nonatomic,strong) UIImage *iconImage;
@property (nonatomic,strong) NSDictionary *attributes;

+ (FEData *)createFEDataByPath:(NSString *)path;

- (UIImage *)getIconImage:(ENUM_FEFileType)fileType;

@end
