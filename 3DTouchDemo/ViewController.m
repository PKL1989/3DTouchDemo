//
//  ViewController.m
//  3DTouchDemo
//
//  Created by 庞珂路 on 16/3/10.
//  Copyright © 2016年 庞珂路. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [self addItem];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeColor:) name:@"changeColor" object:nil];
//    [self getShortcutItems];
    
}

- (void)changeColor:(NSNotification *)noti
{
    self.view.backgroundColor = noti.object;
}
- (void)addItem
{
    UIApplicationShortcutIcon *icon = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeAdd];
    // 创建一个标签，并配置相关属性。
    UIApplicationShortcutItem *item = [[UIApplicationShortcutItem alloc] initWithType:@"two" localizedTitle:@"么么哒" localizedSubtitle:@"爱你们呦" icon:icon userInfo:@{@"key1":@"100",@"key2":@"100",@"key3":@"100",@"key4":@"1"}];
    // 将标签添加进Application的shortcutItems中。
    [UIApplication sharedApplication].shortcutItems = @[item];
}
- (void)getShortcutItems
{
    NSArray *shortcutItems = [[UIApplication sharedApplication] shortcutItems];
    NSMutableArray *mutableItems = [NSMutableArray arrayWithArray:shortcutItems];
    UIApplicationShortcutIcon *icon = [UIApplicationShortcutIcon iconWithTemplateImageName:@"Icon-Small"];
    UIApplicationShortcutItem *item = [[UIApplicationShortcutItem alloc] initWithType:@"two" localizedTitle:@"么么哒" localizedSubtitle:@"爱你们呦" icon:icon userInfo:nil];
    [mutableItems addObject:item];
    [UIApplication sharedApplication].shortcutItems = mutableItems;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
