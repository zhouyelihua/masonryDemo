//
//  STSchoolTaskMessage.h
//  demo2
//
//  Created by yeah on 2/26/16.
//  Copyright © 2016 none. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface STSchoolTaskMessage : UIView
@property(nonatomic,strong) UILabel *leaveamessage;
@property(nonatomic,strong)IBOutlet UIButton*btn1;
@property(nonatomic,strong) UIButton*btn2;
@property(nonatomic,strong) UIButton*btn3;
@property(nonatomic,strong) UIButton*btn4;
@property(nonatomic,strong)  UITextField*note1;
@property(nonatomic,strong) IBOutlet UITextView *text;
@property(nonatomic,strong) UILabel*cost;
@property(nonatomic,strong) UIButton*minus;
@property(nonatomic,strong) UIButton*plus;
-(void)setupSubviews;
- (void) btn1:(id)x;
- (void) btn2:(id)x;
-(void)textAction:(id)x;
-(void)minus:(id)x;
-(void)plus:(id)x;
@end
