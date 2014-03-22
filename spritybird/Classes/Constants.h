//
//  Constants.h

#import "AppDelegate.h"
#import "Macros.h"


// Physic collision bitmasks

static const uint32_t backBitMask     =  0x1 << 0;
static const uint32_t birdBitMask     =  0x1 << 1;
static const uint32_t floorBitMask    =  0x1 << 2;
static const uint32_t blockBitMask    =  0x1 << 3;

// You should set this ad unit ID from your account before compiling.
#define kSampleAdUnitID @"a1532aa79a7b7fd"


// Sound
#define SOUND_JUMP @"Froggy-Jump"
#define SOUND_HIT  @"Foggy-Drop"
#define APP_FONT @"04b_19"
#define SHOW_QUESTION_FIST_TIME @"SHOW_QUESTION_FIST_TIME"

#define ApplicationDelegate ((ATAppDelegate *)[UIApplication sharedApplication].delegate)

// Score
#define REVISE_STEP 10

