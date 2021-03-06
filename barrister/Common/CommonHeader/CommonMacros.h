//
//  CommonMacros.h
//  barrister
//
//  Created by 徐书传 on 16/6/27.
//  Copyright © 2016年 Xu. All rights reserved.
//

/**************** 消息通知 *****************/
#define NOTIFICATION_LOGIN_SUCCESS       @"LoginSuccess"
#define NOTIFICATION_PLAY_VOICE         @"playVoice"
#define NOTIFICATION_PLAY_VOICE_FINISH        @"playVoice_finish"
#define NOTIFICATION_PAYSWITCH_NOTIFICATION  @"Pay_switch"


#define JPushKey @"0c0127f6d6aee11d76de743b"
#define JpushSecret @"f87159c33622287a18e2e33b"

#define APPOINTMENT @"APPOINTMENT" //预约
#define IM @"IM"//即时

//    a.待处理
#define  STATUS_WAITING  @"order.status.waiting"
//    b.进行中
#define STATUS_DOING  @"order.status.doing"
//    c.已完成
#define STATUS_DONE  @"order.status.done"
//    d.已取消
#define STATUS_CANCELED  @"order.status.canceled"
//    e.退款中
#define STATUS_REFUND  @"order.status.refund"
//    f 请求取消
#define STATUS_REQUESTCANCEL @"order.status.request.cancel"


#define TYPE_ORDER  @"income.type.order"// 订单
#define TYPE_GET_MONEY  @"income.type.getmoney"// 提现
#define TYPE_REWARD  @"income.type.reward"// 打赏
#define TYPE_RECHARGE  @"consume.type.recharge"// 充值
#define TYPE_BACK  @"consume.type.back"// 退钱
#define Type_CASE   @"income.type.buycase"//案源消耗


//#define STATUS_0_INIT  @"case.status.init"//刚刚上传（或刚被退回），等待审核
//#define STATUS_1_PUBLISHED  @"case.status.published"//客服审核确认,发布
//#define STATUS_2_WAIT_UPDATE  @"case.status.agency"//代理中，等待更新进度
//#define STATUS_3_WAIT_CLEARING  @"case.status.clearing"//已代理，等待结算
//#define STATUS_4_WAIT_CLEARED  @"case.status.cleared"//结束，已结算




#define AUTH_STATUS_UNAUTHERIZED @"verify.status.unautherized"
#define AUTH_STATUS_SUCCESS @"verify.status.success"
#define AUTH_STATUS_FAILED @"verify.status.failed"
#define AUTH_STATUS_VERIFYING @"verify.status.verifying"

#define CARD_STATUS_NOT_BOUND  @"0";//未绑定
#define CARD_STATUS_BOUND  @"1";//已绑定




#define ORDER_STATUS_CAN   @"can" //可以接单
#define ORDER_STATUS_NOT   @"can_not" //不可以接单

