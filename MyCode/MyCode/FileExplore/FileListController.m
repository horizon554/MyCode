//
//  FileListController.m
//  firtstTest
//
//  Created by JiangJiahao on 16/8/21.
//  Copyright © 2016年 JiangJiahao. All rights reserved.
//

#import "FileListController.h"

@interface FileListController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation FileListController

+ (FileListController *)createFileListController:(NSString *)filePath{
    FileListController *controller = [[FileListController alloc] initWithNibName:@"FileListController" bundle:nil];
    [controller initView];
    return controller;
}

- (void)initView{
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
