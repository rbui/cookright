#import "CRRecipesView.h"


#pragma mark Constants


#pragma mark - Class Extension

@interface CRRecipesView ()

- (void)_initializeRecipesView;


@end // @interface CRRecipesView ()


#pragma mark - Class Variables


#pragma mark - Class Definition

@implementation CRRecipesView


#pragma mark - Properties


#pragma mark - Constructors

- (id)initWithFrame: (CGRect)frame
{
    // Abort if base initializer fails.
	if ((self = [super initWithNibName: @"CRRecipesView"]) == nil)
	{
		return nil;
	}
    
    self.frame = frame;
	
	// Initialize view.
    [self _initializeRecipesView];

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
	[self _initializeRecipesView];
	
	// Return initialized instance.
	return self;
}


#pragma mark - Destructor

- (void)dealloc
{
	// Release instance variables.
	
	// Call the base destructor.
	[super dealloc];
}


#pragma mark - Public Methods


#pragma mark - Overridden Methods


#pragma mark - Private Methods

- (void)_initializeRecipesView
{
	// Initialize instance variables.
}


@end // @implementation CRRecipesView