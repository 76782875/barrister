//
//  LoginProxy.m
//  barrister
//
//  Created by 徐书传 on 16/5/16.
//  Copyright © 2016年 Xu. All rights reserved.
//

#import "LoginProxy.h"

#define GetValidCodeUrl @""
#define LoginUrl  @""



@implementation LoginProxy

-(void)loginWithParams:(NSDictionary *)params Block:(ServiceCallBlock)aBlock
{
    [XuNetWorking postWithUrl:[self appendUrlWithString:LoginUrl] params:params success:^(id response) {
        if (aBlock) {
            aBlock(response,YES);
        }
    } fail:^(NSError *error) {
        if (aBlock) {
            aBlock(error,YES);
        }
    }];
}


-(void)getValidCodeWithParams:(NSDictionary *)params Block:(ServiceCallBlock)aBlock
{
    [XuNetWorking postWithUrl:[self appendUrlWithString:GetValidCodeUrl] params:params success:^(id response) {
        if (aBlock) {
            aBlock(response,YES);
        }
    } fail:^(NSError *error) {
        if (aBlock) {
            aBlock(error,YES);
        }
   }];
}

@end