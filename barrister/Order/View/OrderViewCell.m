//
//  OrderViewCell.m
//  barrister
//
//  Created by 徐书传 on 16/4/6.
//  Copyright © 2016年 Xu. All rights reserved.
//

#import "OrderViewCell.h"
#import "YYWebImage.h"
#import "CALayer+YYAdd.h"

@interface OrderViewCell ()

/**
 *  头像
 */
@property (nonatomic,strong) UIImageView *headerImageView;

/**
 *  用户名称Label
 */
@property (nonatomic,strong) UILabel *nameLabel;

/**
 * 时间Lable
 */
@property (nonatomic,strong) UILabel *timeLabel;

/**
 *  类型Label
 */

@property (nonatomic,strong) UILabel *stateLabel;

@end

@implementation OrderViewCell


-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self addSubview:self.headerImageView];
        [self addSubview:self.nameLabel];
        [self addSubview:self.stateLabel];
        [self addSubview:self.timeLabel];
    }
    return self;
}


-(void)layoutSubviews
{
    [super layoutSubviews];
    [self.headerImageView setFrame:RECT(LeftPadding, LeftPadding + 5, 45, 45)];
    [self.nameLabel setFrame:RECT(self.headerImageView.x + self.headerImageView.width + 10, self.headerImageView.y, 150, 15)];
    [self.stateLabel setFrame:CGRectMake(SCREENWIDTH - 160, LeftPadding + 5, 150, 15)];
    [self.timeLabel setFrame:CGRectMake(self.nameLabel.x, self.nameLabel.y + self.nameLabel.height + 10, 260, 15)];
}


-(void)configData
{
    [super configData];
    
    if (self.model) {
        [self.headerImageView yy_setImageWithURL:[NSURL URLWithString:self.model.userIcon] placeholder:[UIImage imageNamed:@"timeline_image_loading"]];
        self.nameLabel.text = self.model.nickname;
        if ([self.model.type isEqualToString:APPOINTMENT]) {
            self.timeLabel.text = [NSString stringWithFormat:@"%@~%@",self.model.startTime,self.model.endTime];

        }
        else
        {
            self.timeLabel.text = [NSString stringWithFormat:@"%@",self.model.date];
        }
//        self.typeLabel.text = [NSString stringWithFormat:@"类型:%@",self.model.caseType?self.model.caseType:@"无"];
        
        if ([self.model.status isEqualToString:STATUS_CANCELED]) {
            self.stateLabel.text = @"已取消";
            self.stateLabel.textColor = [UIColor colorWithString:@"#848284" colorAlpha:1];
        }
        else if ([self.model.status isEqualToString:STATUS_DOING])
        {
            self.stateLabel.text = @"进行中";
            self.stateLabel.textColor = [UIColor colorWithString:@"#45cd87" colorAlpha:1];
            
        }
        else if([self.model.status isEqualToString:STATUS_DONE])
        {
            self.stateLabel.text = @"已完成";
            self.stateLabel.textColor = [UIColor colorWithString:@"#59E1FA" colorAlpha:1];
            
        }
        else if ([self.model.status isEqualToString:STATUS_WAITING])
        {
            self.stateLabel.text = @"待处理";
            self.stateLabel.textColor = [UIColor colorWithString:@"#F8C82E" colorAlpha:1];
            
        }
        else if ([self.model.startTime isEqualToString:STATUS_REFUND])
        {
            self.stateLabel.text = @"退款中";
            self.stateLabel.textColor = [UIColor colorWithString:@"#a9f82e" colorAlpha:1];
        }
        else if ([self.model.status isEqualToString:STATUS_REQUESTCANCEL])
        {
            self.stateLabel.text = @"申请取消中";
            self.stateLabel.textColor = [UIColor colorWithString:@"#ff4444" colorAlpha:1];
        }

    }
}


-(void)drawRect:(CGRect)rect{
    [super drawRect:rect];
    
    [kSeparatorColor setStroke];
    
    UIBezierPath *linePath=[UIBezierPath bezierPath];
    [linePath moveToPoint:CGPointMake(0, self.bounds.size.height)];
    [linePath addLineToPoint:CGPointMake(self.bounds.size.width, self.bounds.size.height)];
    [linePath stroke];
    
}


#pragma -mark ------Getter----------


-(UILabel *)nameLabel
{
    if (!_nameLabel) {
        _nameLabel = [[UILabel alloc] init];
        _nameLabel.textColor = KColorGray333;
        _nameLabel.font = SystemFont(15.0f);
    }
    return _nameLabel;
}

-(UIImageView *)headerImageView
{
    if (!_headerImageView) {
        _headerImageView = [[UIImageView alloc] init];
        [_headerImageView.layer setCornerRadius:22.5f];
        [_headerImageView.layer setMasksToBounds:YES];

    }
    return _headerImageView;
}

-(UILabel*)timeLabel
{
    if (!_timeLabel) {
        _timeLabel = [[UILabel alloc] init];
        _timeLabel.textColor = KColorGray999;
        _timeLabel.font = SystemFont(12.0f);
        _timeLabel.textAlignment = NSTextAlignmentLeft;
    }
    return _timeLabel;
}

-(UILabel *)stateLabel
{
    if (!_stateLabel) {
        _stateLabel = [[UILabel alloc] init];
        _stateLabel.textColor = KColorGray999;
        _stateLabel.font = SystemFont(13.0f);
        _stateLabel.textAlignment = NSTextAlignmentRight;
    }
    return _stateLabel;
}


@end
