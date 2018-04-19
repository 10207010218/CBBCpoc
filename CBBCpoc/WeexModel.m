//
//  WeexModel.m
//  CBBCpoc
//
//  Created by 汪宁 on 2018/4/19.
//  Copyright © 2018年 Alibaba Cloud. All rights reserved.
//

#import "WeexModel.h"

@implementation WeexModel

WX_EXPORT_METHOD(@selector(showLoginView));
WX_EXPORT_METHOD(@selector(showParams:));
WX_EXPORT_METHOD(@selector(showParams2:callback:));

- (void)showParams:(NSString *)str{
     NSLog(@"pppp");
}
- (void)showLoginView{
   
    NSLog(@"hhhh");
}



-(void)showParams2:(NSString *)inputParam callback:(WXModuleKeepAliveCallback) callback
{
    if(!inputParam){
        return;
    }
    //    NSLog(@"%@",inputParam);
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"tip" message:inputParam delegate:nil
                                          cancelButtonTitle:@"sure" otherButtonTitles: nil] ;
    
    callback(@{@"param":@"hello world!"},YES);
    [alert show];
}


@end
