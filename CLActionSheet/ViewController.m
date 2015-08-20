//
//  ViewController.m
//  CLActionSheet
//
//  Created by Cyrilshanway on 2015/8/19.
//  Copyright (c) 2015年 Cyrilshanway. All rights reserved.
//

#import "ViewController.h"
#import "SystemActionSheet.h"
#import "PicAndTextActionSheet.h"
#import "Item.h"

@interface ViewController ()<DownSheetActionDelegate>
{
    NSMutableArray *a_array;
    NSMutableArray *b_array;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    a_array = [[NSMutableArray alloc] initWithCapacity:0];
    NSString *number1 = @"0911973122";
    NSString *number2 = @"0912973124";
    NSString *number3 = @"0914973127";
    [a_array addObject:number1];
    [a_array addObject:number2];
    [a_array addObject:number3];
    
    Item *item1 = [[Item alloc] init];
    item1.icon = @"journey_phone";
    item1.title = @"0911973122";
    Item *item2 = [[Item alloc] init];
    item2.icon = @"journey_phone";
    item2.title = @"0912973124";
    Item *item3 = [[Item alloc] init];
    item3.icon = @"journey_phone";
    item3.title = @"0914973127";
    b_array = [[NSMutableArray alloc] initWithCapacity:0];
    [b_array addObject:item1];
    [b_array addObject:item2];
    [b_array addObject:item3];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)systemBtnPressed:(id)sender
{
    SystemActionSheet *action_1 = [[SystemActionSheet alloc] initViewMultiplePhone:a_array title:@"撥打電話"];
    [action_1 show];
    [self.view addSubview:action_1];

}

- (IBAction)customBtnPressed:(id)sender
{
    PicAndTextActionSheet *sheet = [[PicAndTextActionSheet alloc] initWithList:b_array title:@"撥打電話"];
    sheet.delegate = self;
    [sheet showInView:self];
}

-(void) didSelectIndex:(NSInteger)index
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"提示" message:[NSString stringWithFormat:@"目前點擊的是第%zi個按鈕",index] delegate:nil cancelButtonTitle:@"確定" otherButtonTitles:nil];
    [alert show];
}

@end
