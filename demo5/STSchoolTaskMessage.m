//
//  STSchoolTaskMessage.m
//  demo2
//
//  Created by yeah on 2/26/16.
//  Copyright © 2016 none. All rights reserved.
//
#import "Masonry/Masonry.h"
#import "STSchoolTaskMessage.h"
#import"ReactiveCocoa/ReactiveCocoa.h"
@interface STSchoolTaskMessage()

@end
@implementation STSchoolTaskMessage
-(instancetype)init{
    if(self=[super init]){
        [self setupSubviews];
    }
    return self;
}
-(void)setupSubviews{
    self.backgroundColor=[UIColor whiteColor];
    self.leaveamessage=[[UILabel alloc]init];
    self.leaveamessage.text=@"捎句话";
    self.leaveamessage.backgroundColor=[UIColor yellowColor];
    [self addSubview:self.leaveamessage];
   // @weakify(self)
    [self.leaveamessage mas_makeConstraints:^(MASConstraintMaker *make) {
      //  @strongify(self)
        make.top.mas_equalTo(self).offset(10);
        make.left.mas_equalTo(self).offset(10);
        make.size.mas_equalTo(CGSizeMake(100, 30));
       // make.size.mas_equalTo();
    }];
    self.btn1=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.btn1 setTitle:@"大包裹" forState:UIControlStateNormal];
    [self.btn1 addTarget:self action:@selector(btn1:)  forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.btn1];
    [self.btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
        //  @strongify(self)
        make.top.mas_equalTo(self.leaveamessage).offset(50);
        make.left.mas_equalTo(self).offset(10);
        make.size.mas_equalTo(CGSizeMake(100, 30));

        // make.size.mas_equalTo();
    }];
    self.btn2=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.btn2 setTitle:@"晚上来" forState:UIControlStateNormal];
    [self.btn2 addTarget:self action:@selector(btn2:)  forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.btn2];
    [self.btn2 mas_makeConstraints:^(MASConstraintMaker *make) {
        //  @strongify(self)
        make.top.mas_equalTo(self.leaveamessage).offset(50);
        make.left.mas_equalTo(self.btn1.mas_right).offset(10);
        make.size.mas_equalTo(CGSizeMake(100, 30));
        // make.size.mas_equalTo();
    }];
    self.text=[[UITextView alloc]init];
   // self.text.delegate=self;
    self.text.backgroundColor=[UIColor purpleColor];
    self.text.text=@"";
   // [self.text addTarget:self action:@selector(textAction:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.text];
    [self.text mas_makeConstraints:^(MASConstraintMaker *make) {
        //  @strongify(self)
        make.top.mas_equalTo(self.leaveamessage).offset(90);
        make.left.mas_equalTo(self.mas_left).offset(10);
        make.size.mas_equalTo(CGSizeMake(280, 100));
        // make.size.mas_equalTo();
    }];
   
    self.cost=[[UILabel alloc]init];
    self.cost.text=@"1";
    self.cost.backgroundColor=[UIColor blueColor];
    self.cost.textAlignment=UITextAlignmentCenter;
    [self addSubview:self.cost];
    [self.cost mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.text.mas_bottom).offset(10);
        make.centerX.mas_equalTo(self);
        make.size.mas_equalTo(CGSizeMake(70, 70));
    }];
    self.minus=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.minus setTitle:@"-" forState:UIControlStateNormal];
    [self.minus addTarget:self action:@selector(minus:)  forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.minus];
    [self.minus mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(self.cost);
        make.right.mas_equalTo(self.cost.mas_left).offset(-10);
        make.size.mas_equalTo(CGSizeMake(30, 30));
    }];
    self.plus=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.plus setTitle:@"+" forState:UIControlStateNormal];
    [self.plus addTarget:self action:@selector(plus:)  forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.plus];
    [self.plus mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(self.cost);
        make.left.mas_equalTo(self.cost.mas_right).offset(10);
        make.size.mas_equalTo(CGSizeMake(30, 30));
    }];

}
-(void)textViewDidChange:(UITextView *)textView {
    self.text.text=textView.text;

}
-(void)btn1:(id)x{
       NSString *tmp= [[self.text.text stringByAppendingString:self.btn1.titleLabel.text]stringByAppendingString:@"  " ];
        self.text.text=tmp;
}
-(void)btn2:(id)x{
    NSString *tmp= [[self.text.text stringByAppendingString:self.btn2.titleLabel.text]stringByAppendingString:@"  " ];
    self.text.text=tmp;
}
-(void)textAction:(id)x{
   
}
-(void)note1:(id)x{
    if(self.note1.backgroundColor==[UIColor yellowColor])
    {
        self.note1.backgroundColor=[UIColor redColor];
    }else{
        self.note1.backgroundColor=[UIColor yellowColor];
    }
}
-(void)minus:(id)x{
    if([self.cost.text integerValue]>1)
        
    {
        self.cost.text=[NSString stringWithFormat:@"%ld",[self.cost.text integerValue]-1];
    }
    else
        self.minus.enabled=NO;
}
-(void)plus:(id)x{
    if ([self.cost.text integerValue]==1) {
        self.minus.enabled=YES;
    }
    self.cost.text=[NSString stringWithFormat:@"%ld",[self.cost.text integerValue]+1];
}
@end
