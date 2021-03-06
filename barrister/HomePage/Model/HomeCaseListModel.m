//
//  HomeCaseListModel.m
//  barrister
//
//  Created by 徐书传 on 16/7/10.
//  Copyright © 2016年 Xu. All rights reserved.
//

#import "HomeCaseListModel.h"

@implementation HomeCaseListModel

-(void)handlePropretyWithDict:(NSDictionary *)dict
{
    self.caseId = [dict objectForKey:@"id"];
    CGFloat textHeight = [XuUtlity textHeightWithString:self.title withFont:SystemFont(14.0f) sizeWidth:SCREENWIDTH - LeftPadding *2];
    self.titleHeight = textHeight;
    
    self.caseInfoHeight = [XuUtlity textHeightWithString:self.caseInfo withFont:SystemFont(14.0f) sizeWidth:SCREENWIDTH - LeftPadding *2];
    if (self.caseInfoHeight < 12) {
        self.caseInfoHeight = 12;
    }
    
    self.caseDetailInfoHeight = self.caseInfoHeight;
    
    if (self.caseInfoHeight > 83.5) {
        self.caseInfoHeight = 83.5f;
    }
    
    
    
    
    
}

@end
