
#import <UIKit/UIKit.h>

@interface KPPageView : UIView

@property (nonatomic,strong) UIView *mainView;

-(void)createPage:(UIView *)FromView;

-(void)upDataPageShow:(NSInteger) dot;
@end
