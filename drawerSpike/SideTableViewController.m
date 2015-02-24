//
//  SideTableViewController.m
//  drawerSpike
//
//  Created by u16suzu on 2015/02/24.
//  Copyright (c) 2015年 IGNIS LTD. All rights reserved.
//

#import "SideTableViewController.h"
#import <UIViewController+MMDrawerController.h>

@interface SideTableViewController ()
@property (nonatomic) NSInteger currentIndex;
@end

@implementation SideTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.currentIndex == indexPath.row) {
        [self.mm_drawerController closeDrawerAnimated:YES completion:nil];
        return;
    }

    
    // どの大学のスレッドを出すかをココでセットする必要がある｡
    UIViewController *centerViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"FIRST_NAVIGATION"];
    switch (indexPath.row) {
        case 0:
            // TODO: ここでプロパティセット
            break;
        case 1:
            // TODO: ココでプロパティセット
            break;
        default:
            break;
    }
    
    if (centerViewController) {
        self.currentIndex = indexPath.row;
        [self.mm_drawerController setCenterViewController:centerViewController withCloseAnimation:YES completion:nil];
    } else {
        [self.mm_drawerController closeDrawerAnimated:YES completion:nil];
    }
}

@end
