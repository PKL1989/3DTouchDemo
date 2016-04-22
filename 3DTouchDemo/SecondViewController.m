//
//  SecondViewController.m
//  3DTouchDemo
//
//  Created by 庞珂路 on 16/3/10.
//  Copyright © 2016年 庞珂路. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   [self registerForPreviewingWithDelegate:self sourceView:self.view];
    
}
- (UIViewController *)previewingContext:(id<UIViewControllerPreviewing>)context viewControllerForLocation:(CGPoint) point
{
//    UIStoryboard *sb = self.storyboard;
//    ThirdViewController *childVC = [sb instantiateViewControllerWithIdentifier:@"ThirdViewController"];
    ThirdViewController *childVC = [[ThirdViewController alloc]init];
    childVC.title = @"这么神奇！";
    childVC.preferredContentSize = CGSizeMake(0,30);
    CGRect rect = CGRectMake(10, point.y - 10, self.view.frame.size.width - 20,20);
    context.sourceRect = rect;
    return childVC;
}
- (void)previewContext:(id<UIViewControllerPreviewing>)context commitViewController:(UIViewController*)vc
{
    [self showViewController:vc sender:self];
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
