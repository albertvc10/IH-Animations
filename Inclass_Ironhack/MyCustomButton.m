#import "MyCustomButton.h"

@interface MyCustomButton ()

@property (nonatomic, strong) UIView *shadowView;
@property (nonatomic, strong) UILabel *label;
@end

@implementation MyCustomButton


// Designated initializer

-(instancetype)initWithFrame:(CGRect)frame {

    return [self initWithFrame:CGRectMake(0, 0, 100, 100) backGroundColor:[UIColor redColor] title:@"Title"];
    
}



- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        //initializing
        [self commonSetup];
    }
    return self;
    
}


- (instancetype)init
{

    return [self initWithFrame:CGRectMake(0, 0, 100, 100) backGroundColor:[UIColor redColor] title:@"Title"];
}

- (instancetype) initWithFrame:(CGRect)frame backGroundColor:(UIColor *)theBackgroundColor title:(NSString *)theTitle {
    self = [super initWithFrame:frame];
    if (self) {
      
        _buttonBackroundColor = theBackgroundColor;
        _buttonTitle = theTitle;
        [self commonSetup];

    }
    
    return self;
}

//Define setter for the property
- (void)setButtonBackroundColor:(UIColor *)buttonBackroundColor {
    
    self.buttonBackroundColor = buttonBackroundColor;
    self.backgroundColor = buttonBackroundColor;
    
}

- (void)setButtonTitle:(NSString *)buttonTitle {
    self.buttonTitle = buttonTitle;
    
    self.label.text = buttonTitle;
    
}

- (void)commonSetup {
    
    if (!self.buttonBackroundColor) {
        self.backgroundColor = [UIColor greenColor];
    }
    else {
        self.backgroundColor = self.buttonBackroundColor;
    }
    
    //shadow
    CGFloat shadowHeight = 10;
    self.shadowView = [[UIView alloc] initWithFrame:CGRectMake(0, CGRectGetHeight(self.frame) - shadowHeight, CGRectGetWidth(self.frame), shadowHeight)];
    
    self.shadowView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.5];
    [self addSubview:self.shadowView];
    
    self.label = [[UILabel alloc]initWithFrame:self.bounds];
    
    if (!self.buttonTitle) {
        self.label.text = @"Add Title!";
    }
    else {
        self.label.text = self.buttonTitle;
        
    }
    
    self.label.textColor = [UIColor whiteColor];
    self.label.textAlignment = NSTextAlignmentCenter;
    
    [self addSubview:self.label];
    
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    self.shadowView.frame = self.bounds;
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    
    CGFloat shadowHeight = 10;
    self.shadowView.frame = CGRectMake(0, CGRectGetHeight(self.frame) - shadowHeight, CGRectGetWidth(self.frame), shadowHeight);
}
@end
