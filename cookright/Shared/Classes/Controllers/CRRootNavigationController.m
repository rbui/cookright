#import "CRRootNavigationController.h"
#import "CRSetupViewController.h"


#pragma mark Constants


#pragma mark - Class Extension

@interface CRRootNavigationController ()

@end // @interface CRRootNavigationController ()


#pragma mark - Class Variables

static CRRootNavigationController *_sharedInstance;


#pragma mark - Class Definition

@implementation CRRootNavigationController


#pragma mark - Properties


#pragma mark - Constructors

+ (void)initialize
{
	// NOTE: initialize is called in a thead-safe manner so we don't need to worry about two shared instances possibly being created.
	
	// Create a flag to keep track of whether or not this class has been initialized because this method could be called a second time if a subclass does not override it.
	static BOOL classInitialized = NO;
	
	// If this class has not been initialized then create the shared instance.
	if (classInitialized == NO)
	{
		_sharedInstance = [[CRRootNavigationController alloc] 
			initWithDefaultNibName];
		
		classInitialized = YES;
	}
}

- (id)initWithDefaultNibName
{
    CRSetupViewController *setupViewController = [[CRSetupViewController alloc]
        initWithDefaultNibName];
    // Abort if base initializer fails.
	if ((self = [super initWithRootViewController: setupViewController]) == nil)
	{
		return nil;
	}
    
    // Hide the navigation bar.
    self.navigationBar.tintColor = [UIColor clearColor];
    self.navigationBarHidden = YES;
    
    return self;
}


#pragma mark - Public Methods

+ (CRRootNavigationController *)sharedInstance
{
	return _sharedInstance;
}


#pragma mark - Overridden Methods

- (id)copyWithZone: (NSZone *)zone
{
	return self;
}

- (id)retain
{
	return self;
}

- (NSUInteger)retainCount
{
	return NSUIntegerMax;
}

- (oneway void)release
{
}

- (id)autorelease
{
	return self;
}


#pragma mark - Private Methods


@end // @implementation CRRootNavigationController