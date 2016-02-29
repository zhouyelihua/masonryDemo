//
//  ViewController.m
//  demo2
//
//  Created by yeah on 2/26/16.
//  Copyright © 2016 none. All rights reserved.
//

#import "ViewController.h"
#import "STSchoolTaskMessage.h"
#import "Masonry/Masonry.h"
@interface ViewController ()
@property (nonatomic,strong)IBOutlet UIButton *bbt;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    STSchoolTaskMessage* sv=[[STSchoolTaskMessage alloc]init];
   
    self.view.backgroundColor=[UIColor clearColor];
    sv.frame=self.view.bounds;
    
        [self.view addSubview:sv];
    [sv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(300, 300));
        
    }];

 
 
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) btn1
{
    NSLog(@"1112323323");
    return ;
}
@end
