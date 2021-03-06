//
//  AccountProxy.h
//  barrister
//
//  Created by 徐书传 on 16/5/30.
//  Copyright © 2016年 Xu. All rights reserved.
//

#import "BaseNetProxy.h"

@interface AccountProxy : BaseNetProxy


/**
 *  获取我的账户信息
 *
 *  @param params 参数
 *  @param aBlock nil
 */
-(void)getMyAccountDataWithParams:(NSDictionary *)params Block:(ServiceCallBlock)aBlock;


/**
 *  获取账户明细接口
 *
 *  @param params 请求参数
 *  @param aBlock 返回处理Block
 */

-(void)getAccountDetailDataWithParams:(NSMutableDictionary *)params Block:(ServiceCallBlock)aBlock;


/**
 *  根据卡号获取卡的信息
 *
 *  @param cardNum
 */
-(void)getCardInfoWithCardNum:(NSString *)cardNum WithBlock:(ServiceCallBlock)aBlock;

/**
 *  提现
 */

-(void)tiXianActionWithMoney:(NSMutableDictionary *)aParams Block:(ServiceCallBlock)aBlock;


/**
 *  绑定银行卡
 */
-(void)bindCarkWithParams:(NSMutableDictionary *)params block:(ServiceCallBlock)aBlock;



/**
 修改服务价格

 @param params 参数
 @param aBlock 回调block
 */

-(void)changePriceWithParams:(NSMutableDictionary *)params block:(ServiceCallBlock)aBlock;


/**
 请求是否是专家

 @param params
 @param aBlock
 */
-(void)getIsExpertDataWithParams:(NSMutableDictionary *)params block:(ServiceCallBlock)aBlock;

@end
