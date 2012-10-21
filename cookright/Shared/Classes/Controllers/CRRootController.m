#import "CRRootController.h"
#import "CRRecipesView.h"


#pragma mark Constants


#pragma mark - Class Extension

@interface CRRootController ()
{
    @private __weak UIView *_mainView;
    @private __strong UIView *_currentView;
    @private __weak CRRecipesView *_recipiesView;
}

@property (nonatomic, weak) IBOutlet UIView *mainView;

- (void)CR_initializeRootController;
- (IBAction)CR_showLogo: (id)sender;
- (IBAction)CR_showRecipes: (id)sender;
- (IBAction)CR_showLists: (id)sender;
- (IBAction)CR_showMealPlan: (id)sender;

@end // @interface CRRootController ()


#pragma mark - Class Variables


#pragma mark - Class Definition

@implementation CRRootController


#pragma mark - Properties


#pragma mark - Constructors

- (id)initWithDefaultNibName
{
	// Abort if base initializer fails.
	if ((self = [self initWithNibName: @"CRRootView" 
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
	[self CR_initializeRootController];
	
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
	[self CR_initializeRootController];
	
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
	[self CR_initializeRootController];

	// Return initialized instance.
	return self;
}


#pragma mark - Destructor

- (void)dealloc 
{
	// nil out delegates of any instance variables.
}


#pragma mark - Public Methods


#pragma mark - Overridden Methods

- (void)viewDidLoad
{
	// Call base implementation.
	[super viewDidLoad];
	
	// Perform additional initialization after nib outlets are bound.
    
    // Create the views to switch between.
    CGRect frame = self.mainView.frame;
    _recipiesView = [[CRRecipesView alloc]
        initWithFrame: frame];
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

- (void)CR_initializeRootController
{
	// Initialize instance variables.
}

- (IBAction)CR_showLogo: (id)sender
{
}

- (IBAction)CR_showRecipes: (id)sender
{
    if (_currentView != nil)
    {
        [_currentView removeFromSuperview];
    }
    
    [_mainView addSubview: _recipiesView];
}

- (IBAction)CR_showLists: (id)sender
{
}

- (IBAction)CR_showMealPlan: (id)sender
{
}



@end // @implementation CRRootController