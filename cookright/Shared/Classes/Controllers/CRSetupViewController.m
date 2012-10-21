#import "CRSetupViewController.h"
#import "CRRootController.h"


#pragma mark Constants


#pragma mark - Class Extension

@interface CRSetupViewController ()
{
    @private __weak UIButton *_button;
    @private __strong UIImageView *_page1;
    @private __strong UIImageView *_page2;
    @private __strong UIImageView *_page3;
    @private __strong UIImageView *_page4;
}

@property (nonatomic, weak) IBOutlet UIButton *button;

- (void)_initializeSetupViewController;
- (IBAction)showPage2: (id)sender;
- (IBAction)showPage3: (id)sender;
- (IBAction)showPage4: (id)sender;
- (IBAction)showMainRootController: (id)sender;


@end // @interface CRSetupViewController ()


#pragma mark - Class Variables


#pragma mark - Class Definition

@implementation CRSetupViewController


#pragma mark - Properties


#pragma mark - Constructors

- (id)initWithDefaultNibName
{
	// Abort if base initializer fails.
	if ((self = [self initWithNibName: @"CRSetupView" 
		bundle: nil]) == nil)
	{
		return nil;
	}

	// Return initialized instance.
	return self;
}

- (id)init
{
	// Abort if base initializer fails.
	if ((self = [super init]) == nil)
	{
		return nil;
	}
	
	// Initialize view.
	[self _initializeSetupViewController];
	
	// Return initialized instance.
	return self;
}

- (id)initWithNibName: (NSString *)nibName 
    bundle:(NSBundle *)bundle
{
	// Abort if base initializer fails.
	if ((self = [super initWithNibName: nibName 
        bundle: bundle]) == nil)
	{
		return nil;
	}
	
	// Initialize view.
	[self _initializeSetupViewController];
	
	// Return initialized instance.
	return self;
}

- (id)initWithCoder: (NSCoder *)coder
{
	// Abort if base initializer fails.
	if ((self = [super initWithCoder: coder]) == nil)
	{
		return nil;
	}
	
	// Initialize view.
	[self _initializeSetupViewController];
	
	// Return initialized instance.
	return self;
}


#pragma mark - Public Methods


#pragma mark - Overridden Methods

- (void)viewDidLoad
{
	// Call base implementation.
	[super viewDidLoad];
	
	// Perform additional initialization after nib outlets are bound.
    
    CGRect frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    CGRect frameHidden = CGRectMake(frame.size.width, 0, frame.size.width, frame.size.height);
    _page1 = [[UIImageView alloc]
        initWithImage: [UIImage imageNamed: @"Welcome_1.png"]];
    _page1.frame = frame;
    _page2 = [[UIImageView alloc]
        initWithImage: [UIImage imageNamed: @"Welcome_2_Foods.png"]];
    _page2.frame = frameHidden;
    _page3 = [[UIImageView alloc]
        initWithImage: [UIImage imageNamed: @"Welcome_3_Foods_Edited.png"]];
    _page3.frame = frameHidden;
    _page4 = [[UIImageView alloc]
        initWithImage: [UIImage imageNamed: @"Welcome_4_Cook_Number.png"]];
    _page4.frame = frameHidden;
    
    [self.view addSubview: _page1];
    [self.view addSubview: _page2];
    [self.view addSubview: _page3];
    [self.view addSubview: _page4];
    
    [self.view bringSubviewToFront: self.button];
}

- (void)viewWillAppear: (BOOL)animated
{
	// Call base implementation.
	[super viewWillAppear: animated];

	// Prepare view to be displayed onscreen.
}

- (void)viewDidAppear: (BOOL)animated
{
	// Call base implementation.
	[super viewDidAppear: animated];
	
	// Perform any actions required when the view is displayed onscreen.
}

- (void)viewWillDisappear: (BOOL)animated
{
	// Call base implementation.
	[super viewWillDisappear: animated];

	// Prepare view to be moved offscreen.
}

- (void)viewDidDisappear: (BOOL)animated
{
	// Call base implementation.
	[super viewDidDisappear: animated];
	
	// Perform any actions required when the view has been moved offscreen.
}

- (void)didReceiveMemoryWarning
{
	// Call base implementation.
	[super didReceiveMemoryWarning];
	
	// Free up any memory that can be recreated easily.
}


#pragma mark - Private Methods

- (void)_initializeSetupViewController
{
	// Initialize instance variables.
}

- (IBAction)showPage2: (id)sender
{
    [UIView beginAnimations: @"showPage2"
        context: nil];
    [UIView setAnimationDuration: 0.5f];
    _page2.frame = _page1.frame;
    [UIView commitAnimations];
    
    // Set up the next button action.
    [self.button addTarget: self
        action: @selector(showPage3:)
        forControlEvents: UIControlEventTouchUpInside];
}

- (IBAction)showPage3: (id)sender
{
    [UIView beginAnimations: @"showPage3"
        context: nil];
    [UIView setAnimationDuration: 0.5f];
    _page3.frame = _page1.frame;
    [UIView commitAnimations];
    
    // Set up the next button action.
    [self.button addTarget: self
        action: @selector(showPage4:)
        forControlEvents: UIControlEventTouchUpInside];
}

- (IBAction)showPage4: (id)sender
{
    [UIView beginAnimations: @"showPage4"
        context: nil];
    [UIView setAnimationDuration: 0.5f];
    _page4.frame = _page1.frame;
    [UIView commitAnimations];
    
    // Set up the next button action.
    [self.button addTarget: self
        action: @selector(showMainRootController:)
        forControlEvents: UIControlEventTouchUpInside];
}

- (IBAction)showMainRootController: (id)sender
{
    CRRootController *rootController = [[CRRootController alloc]
        initWithDefaultNibName];
    [self.navigationController pushViewController: rootController
        animated: YES];
}


@end // @implementation CRSetupViewController