

#import "KPPageView.h"

#define count 4
#define pointWH 8
#define pointLR 15

@interface KPPageView()

@property (nonatomic,strong) UIImage *currentImg;
@property (nonatomic,strong) UIImage *otherImg;

@property (nonatomic,strong) UIView *fromView;

@end

@implementation KPPageView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.currentImg = [UIImage imageNamed:@"main_badge"];
        
        self.otherImg = [UIImage imageNamed:@"new_feature_share_true"];
        
        
    }
    return self;
}
-(UIView *)mainView{
    
    if (!_mainView) {
        _mainView = [[UIView alloc]init];
    }
    return _mainView;
}

-(void)upDataPageShow:(NSInteger) dot{
    
    // default 0
    UIView *viewAll = [[UIView alloc]init];
    for (int i = 0; i< count; i++) {
        UIImageView *view = [[UIImageView alloc]init];
//        NSLog(@"dot:%ld",(long)dot);
        if (i== dot) {
            view.image = self.currentImg;
        }else{
            view.image = self.otherImg;
        }
        view.frame = CGRectMake((i +1) * pointLR +(i * pointWH), 1, pointWH, pointWH);
        [viewAll addSubview:view];
    }
    
    viewAll.size = CGSizeMake((count +1) * pointLR + count * pointWH, 10);
    
    [self layoutIfNeeded];
    
    
    viewAll.centerX = self.fromView.W * 0.5;
    viewAll.Y = self.fromView.H -100;
    
    self.mainView = viewAll;
    
    [self.fromView addSubview:viewAll];
    
    
    
}


-(void)createPage:(UIView *)FromView{

    _fromView = FromView;
    
    [self upDataPageShow:0];
}


@end
