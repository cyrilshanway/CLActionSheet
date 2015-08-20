//
//  ItemCell.m
//  CLActionSheet
//
//  Created by Cyrilshanway on 2015/8/19.
//  Copyright (c) 2015年 Cyrilshanway. All rights reserved.
//

#import "ItemCell.h"

@interface ItemCell()

@property (nonatomic , strong) UIImageView *leftView;
@property (nonatomic , strong) UILabel     *titleLabel;
@property (nonatomic , strong) Item        *item;

@end

@implementation ItemCell

//在initWithStyle中，生成控件，將控件添加到self.contentView中
-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        _leftView   = [[UIImageView alloc] init];
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.backgroundColor = [UIColor clearColor];
        
        [self.contentView addSubview:_leftView];
        [self.contentView addSubview:_titleLabel];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return self;
}

//在layoutSubviews中，設置控件的frame
-(void)layoutSubviews
{
    [super layoutSubviews];
    
    _leftView.frame = CGRectMake(20, (CGRectGetHeight(self.frame)-30)/2, 30, 30);
    _titleLabel.frame = CGRectMake(CGRectGetMaxX(_leftView.frame)+15, (CGRectGetHeight(self.frame)-20)/2, 150, 20);
    _titleLabel.textColor = [UIColor blueColor];
    
}

//設置data
-(void)setData:(Item *)item
{
    _item = item;
    
    _leftView.image = [UIImage imageNamed:item.icon];
    _titleLabel.text = item.title;
    
}

//設置點擊事件
-(void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:YES];
    if(selected)
    {
        self.backgroundColor = RGBCOLOR(12, 102, 188);
    }else{
        self.backgroundColor = [UIColor whiteColor];
    }
    
}
@end
