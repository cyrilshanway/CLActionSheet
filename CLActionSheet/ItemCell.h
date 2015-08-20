//
//  ItemCell.h
//  CLActionSheet
//
//  Created by Cyrilshanway on 2015/8/19.
//  Copyright (c) 2015年 Cyrilshanway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Item.h"

#define RGBCOLOR(r, g, b)       [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1]
#define RGBACOLOR(r, g, b, a)   [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]
//設備的螢幕高度
#define ScreenHeight [UIScreen mainScreen].bounds.size.height
//設備的螢幕寬度
#define ScreenWidth [UIScreen mainScreen].bounds.size.width

@interface ItemCell : UITableViewCell

-(void)setData : (Item *)item;

@end
