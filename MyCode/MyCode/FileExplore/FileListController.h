//
//  FileListController.h
//  firtstTest
//
//  Created by JiangJiahao on 16/8/21.
//  Copyright © 2016年 JiangJiahao. All rights reserved.
//

#import "ViewControllerBase.h"

@interface FileListController : ViewControllerBase<UITableViewDelegate,UITableViewDataSource>

+ (FileListController *)createFileListController:(NSString *)filePath;

@end
