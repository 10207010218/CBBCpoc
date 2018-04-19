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
    v1.url =[NSURL URLWithString:@"http://emas-ha-remote-log-poc.oss-cn-beijing.aliyuncs.com/eweex/app/111-11/upload/9612b6d0-16d3-4b51-aba3-dc34224377b3/index.js"]; //[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"index" ofType:@"js" inDirectory:@""]];
    v1.tabBarItem.image = [UIImage imageNamed:@"icon_map"];
    
    v1.tabBarItem.title = @"home";
    
    v1.view.backgroundColor = [UIColor orangeColor];
    
    SetController *v2 = [SetController new];
    
    v2.tabBarItem.image = [UIImage imageNamed:@"icon_cycle"];
    
    v2.tabBarItem.title = @"运动";
    
    v2.view.backgroundColor = [UIColor greenColor];
    
    NSArray *array = @[v1,v2];
    
    self.viewControllers = array;
    
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
