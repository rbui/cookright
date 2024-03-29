#import "CRMyIngredientsView.h"


#pragma mark Constants


#pragma mark - Class Extension

@interface CRMyIngredientsView ()

- (void)_initializeMyIngredientsView;


@end // @interface CRMyIngredientsView ()


#pragma mark - Class Variables


#pragma mark - Class Definition

@implementation CRMyIngredientsView


#pragma mark - Properties


#pragma mark - Constructors

- (id)initWithFrame: (CGRect)frame
{
	// Abort if base initializer fails.
	if ((self = [super initWithFrame: frame]) == nil)
	{
		return nil;
	}
	
	// Initialize view.
	[self _initializeMyIngredientsView];
	
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
	[self _initializeMyIngredientsView];
	
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

- (void)_initializeMyIngredientsView
{
	// Initialize instance variables.
}


@end // @implementation CRMyIngredientsView