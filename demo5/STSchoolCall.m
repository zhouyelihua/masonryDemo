//
//  STSchoolCall.m
//  demo5
//
//  Created by yeah on 2/29/16.
//  Copyright © 2016 none. All rights reserved.
//

#import "STSchoolCall.h"
#import "Masonry/Masonry.h"
@interface STSchoolCall()
@end
@implementation STSchoolCall
-(instancetype)init{
    if (self=[super init]) {
        
        [self setup];
    }
    return self;
}
-(void ) setup{

    self.call=[UIButton buttonWithType:UIButtonTypeCustom];
    [self.call  setTitle:@"召唤包裹侠" forState:UIControlStateNormal ];
    [self.call addTarget:self action:@selector(btn:) forControlEvents:UIControlEventTouchDragInside];
    [self addSubview:self.call];
    [self.call mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
    }];
}
-(void)btn:(id)x{

}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
