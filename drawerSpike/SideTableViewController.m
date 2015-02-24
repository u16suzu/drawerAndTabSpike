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
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic) NSInteger currentIndex;
@end

@implementation SideTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = (id)self;
    self.tableView.dataSource = (id)self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view



#pragma mark - Table view delegate methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"ResultCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"cell %d", indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.currentIndex == indexPath.row) {
        [self.mm_drawerController closeDrawerAnimated:YES completion:nil];
        return;
    }

    
    // どのスレッドを出すかをココでセットする必要がある｡
    UIViewController *centerViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"TAB_BAR_CONTROLLER"];
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
