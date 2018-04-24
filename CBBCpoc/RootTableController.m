//
//  RootTableController.m
//  CBBCpoc
//
//  Created by 汪宁 on 2018/4/19.
//  Copyright © 2018年 Alibaba Cloud. All rights reserved.
//

#import "RootTableController.h"
#import "HomeController.h"
#import "SetController.h"
#import "WXDemoViewController.h"
@interface RootTableController ()

@end

@implementation RootTableController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    WXDemoViewController *v1 = [[WXDemoViewController alloc]init];
    v1.url =[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"index" ofType:@"js" inDirectory:@""]];
    v1.tabBarItem.image = [UIImage imageNamed:@"icon_map"];
    
    v1.tabBarItem.title = @"首页";

     WXDemoViewController *v2 = [ WXDemoViewController new];
     v2.url =[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"finance" ofType:@"js" inDirectory:@""]];
    v2.tabBarItem.image = [UIImage imageNamed:@"icon_cycle"];
    
    v2.tabBarItem.title = @"金融";
    
    WXDemoViewController *v3 = [ WXDemoViewController new];
    v3.url =[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"life" ofType:@"js" inDirectory:@""]];
    v3.tabBarItem.image = [UIImage imageNamed:@"icon_cycle"];
    
    v3.tabBarItem.title = @"生活";
    
    WXDemoViewController *v4 = [ WXDemoViewController new];
    v4.url =[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"activity" ofType:@"js" inDirectory:@""]];
    v4.tabBarItem.image = [UIImage imageNamed:@"icon_cycle"];
    
    v4.tabBarItem.title = @"活动";
    
    
  
    WXDemoViewController *v5 = [ WXDemoViewController new];
    v5.url =[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"logout" ofType:@"js" inDirectory:@""]];
    v5.tabBarItem.image = [UIImage imageNamed:@"icon_cycle"];
    v5.tabBarItem.title = @"我的";
    UINavigationController *nv5 = [[UINavigationController alloc]initWithRootViewController:v5];
    nv5.tabBarItem.title = @"我的";
    
    
    NSArray *array = @[v1,v2,v3,v4,nv5];
    
    self.viewControllers = array;
    
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
